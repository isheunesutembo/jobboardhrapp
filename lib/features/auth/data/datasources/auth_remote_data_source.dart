import 'dart:convert';
import 'package:jobboardhrapp/config/app_config.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:http/http.dart' as http;
import 'package:jobboardhrapp/features/auth/data/repositories/local_auth_repository.dart';

abstract class AuthRemoteDataSource {
  Future<CompanyModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
    required String address,
    required String phoneNumber,
  });

  Future<CompanyModel> logInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<bool> isLoggedIn();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client _client;
  final LocalAuthRepository _localAuthRepository;
  AuthRemoteDataSourceImpl(this._client, this._localAuthRepository);
  @override
  Future<CompanyModel> logInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    Map<String, String> requestHeaders = {
      "Accept": "application/json",
      "Content-Type":"application/json"
    };
    final response = await _client.post(
      Uri.parse(AppConfig.baseUrl + AppConfig.logInCompany),
      body: jsonEncode({"email": email, "password": password}),
      headers: requestHeaders
    );

    try {
      var data = jsonDecode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        _localAuthRepository.setUserId(data['_id']);
        _localAuthRepository.setToken(data['accesstoken']);

        return CompanyModel.fromJson(data);
      } else {
        throw Exception(data['message'] ?? 'Login failed');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<CompanyModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
    required String address,
    required String phoneNumber,
  }) async {
    Map<String, String> requestHeaders = {
      "Accept": "application/json",
      "Content-Type":"application/json"
    };
    final response = await _client.post(
      Uri.parse(AppConfig.baseUrl + AppConfig.registerCompany),headers: requestHeaders,
      body: jsonEncode({
        "email": email,
        "password": password,
        "name": name,
        "address": address,
        "phoneNumber": phoneNumber,
      }),
    );

    try {
      var data = jsonDecode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return CompanyModel.fromJson(data);
      } else {
        throw Exception(data['message'] ?? 'Signup failed');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    final token = _localAuthRepository.getUserToken();
    return token != null;
  }
}
