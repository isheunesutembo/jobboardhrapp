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
        "skillTags": skillTags,
        "salary": salary,
        "category": category,
        "company": "${_localAuthRepository.getUserId()}",
      }),
      headers: requestHeaders,
    );

    try {
      var data = jsonDecode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return VacancyModel.fromJson(data);
      } else {
        throw Exception(data['message'] ?? 'Failed  to upload vacancy');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<VacancyModel>> getVacanciesByCompanyId() async {
    Map<String, String> requestHeaders = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer ${_localAuthRepository.getUserToken()}",
    };
    var url = Uri.parse(
      "${AppConfig.baseUrl}${AppConfig.vacanciesUrl}/company/${_localAuthRepository.getUserId()}",
    );
    var response = await _client.get(url, headers: requestHeaders);
    var data = jsonDecode(response.body);

    try {
      if (response.statusCode == 200) {
        final vacancies = data["vacancies"] ;
        return vacanciesFromJson(vacancies);
      } else {
        throw Exception(data['message'] ?? 'Getting vacancies failed');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
