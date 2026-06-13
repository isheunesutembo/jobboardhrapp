import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jobboardhrapp/config/app_config.dart';
import 'package:jobboardhrapp/features/application/data/models/application_model.dart';
import 'package:jobboardhrapp/features/auth/data/repositories/local_auth_repository.dart';

abstract class ApplicationRemoteDataSource {
  Future<List<ApplicationModel>> getApplicationsByCompanyId();
  Future<String> updateApplicationStatus(String applicationId, String status);
}

class ApplicationRemoteDataSourceImpl implements ApplicationRemoteDataSource {
  final http.Client _client;
  final LocalAuthRepository _localAuthRepository;
  ApplicationRemoteDataSourceImpl(this._client, this._localAuthRepository);

  @override
  Future<List<ApplicationModel>> getApplicationsByCompanyId() async {
    Map<String, String> requestHeaders = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer ${_localAuthRepository.getUserToken()}",
    };

    var url = Uri.parse(
      "${AppConfig.baseUrl}/${AppConfig.applicationByCompanyUrl}/${_localAuthRepository.getUserId()}",
    );
    var response = await _client.get(url, headers: requestHeaders);
    var data = jsonDecode(response.body);

    try {
      if (response.statusCode == 200) {
        return applicationFromJson(data);
      } else {
        throw Exception(data['message'] ?? 'Getting applications failed');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
  
  @override
  Future<String> updateApplicationStatus(String applicationId, String status) async{
   
    Map<String, String> requestHeaders = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer ${_localAuthRepository.getUserToken()}",
    };

    var url = Uri.parse(
      "${AppConfig.baseUrl}/${AppConfig.applicationStatusUrl}/$applicationId",
    );
    var response = await _client.put(url,body: jsonEncode({
       "status":status
    }), headers: requestHeaders);
    var data = jsonDecode(response.body);

    try {
      if (response.statusCode == 200) {
        return data["message"];
      } else {
        throw Exception(data['message'] ?? 'Getting applications failed');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
