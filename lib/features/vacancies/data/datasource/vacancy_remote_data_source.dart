import 'dart:convert';

import 'package:dio/dio.dart';
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
  final Dio _dio;
  final LocalAuthRepository _localAuthRepository;

  VacancyRemoteDataSourceImpl(this._dio, this._localAuthRepository);
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
    final companyId = await _localAuthRepository.getUserId();

    final response = await _dio.post(
      AppConfig.vacanciesUrl,
      data: {
        "title": title,
        "description": description,
        "requirements": requirements,
        "experience": experience,
        "skillTags": skillTags,
        "salary": salary,
        "category": category,
        "company": "${_localAuthRepository.getUserId()}",
      },

      queryParameters: {'company': companyId},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.data);
      return VacancyModel.fromJson(data);
    }
    throw Exception(
      'Failed to upload vacancy (HTTP ${response.statusCode}): ${response.data}',
    );
  }

  @override
  Future<List<VacancyModel>> getVacanciesByCompanyId() async {
    final response = await _dio.get(AppConfig.vacanciesUrl);
    if (response.statusCode == 200) {
      final data = response.data as Map<String,dynamic>;
      final vacancies = data['vacancies'] ;
      return vacanciesFromJson(vacancies);
    }
    // Non-200 responses might be HTML (proxy/login/404), so don't jsonDecode here.
    throw Exception(
      'Getting vacancies failed (HTTP ${response.statusCode}): ${response.data}',
    );
  }
}
