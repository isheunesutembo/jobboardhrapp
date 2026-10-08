import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jobboardhrapp/config/app_config.dart';
import 'package:jobboardhrapp/features/auth/data/repositories/local_auth_repository.dart';
import 'package:jobboardhrapp/features/vacancies/data/model/vacancy_model.dart';

abstract class VacancyRemoteDataSource {
  Future<VacancyModel> addVacancy({
    required String title,
    required String description,
    required String requirements,
    required String experience,
    required List<String> skillTags,
    required String salary,
    required String category,
  });

  Future<List<VacancyModel>> getVacanciesByCompanyId();
}

class VacancyRemoteDataSourceImpl implements VacancyRemoteDataSource {
  final http.Client _client;
  final LocalAuthRepository _localAuthRepository;

  VacancyRemoteDataSourceImpl(this._client, this._localAuthRepository);
  @override
  Future<VacancyModel> addVacancy({
    required String title,
    required String description,
    required String requirements,
    required String experience,
    required List<String> skillTags,
    required String salary,
    required String category,
  }) async {
    Map<String, String> requestHeaders = {
      "Accept": "application/json",
      "Content-Type": "application/json",
    };

    final response = await _client.post(
      Uri.parse(AppConfig.baseUrl + AppConfig.vacanciesUrl),
      body: jsonEncode({
        "title": title,
        "description": description,
        "requirements": requirements,
        "experience": experience,
        "skillTags": skillTags,
        "salary": salary,
        "category": category,
        "company": "${_localAuthRepository.getUserId()}",
      }),
      headers: requestHeaders,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      // Only attempt to decode JSON on successful responses.
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      return VacancyModel.fromJson(data);
    }

    // Non-2xx responses might be HTML (login page / 404 / proxy error),
    // so avoid jsonDecode and surface the body for debugging.
    throw Exception(
      'Failed to upload vacancy (HTTP ${response.statusCode}): ${response.body}',
    );
  }

  @override
  Future<List<VacancyModel>> getVacanciesByCompanyId() async {
    final token = _localAuthRepository.getUserToken();

    final Map<String, String> requestHeaders = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      if (token != null) "Authorization": "Bearer $token",
    };
    var url = Uri.parse(
      "${AppConfig.baseUrl}${AppConfig.vacanciesUrl}/company/${_localAuthRepository.getUserId()}",
    );
    final response = await _client.get(url, headers: requestHeaders);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final vacancies = data['vacancies'];
      return vacanciesFromJson(vacancies);
    }

    // Non-200 responses might be HTML (proxy/login/404), so don't jsonDecode here.
    throw Exception(
      'Getting vacancies failed (HTTP ${response.statusCode}): ${response.body}',
    );
  }
}
