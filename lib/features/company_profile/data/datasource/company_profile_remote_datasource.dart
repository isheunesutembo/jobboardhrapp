

import 'dart:convert';

import 'package:jobboardhrapp/config/app_config.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:http/http.dart' as http;
import 'package:jobboardhrapp/features/auth/data/repositories/local_auth_repository.dart';
abstract class CompanyProfileRemoteDataSource{

  Future<CompanyModel>getCompanyProfile(String id);
  Future<CompanyModel>updateCompanyInfo(String name,String address,String phoneNumber);
}

class CompanyProfileRemoteDataSourceImpl implements CompanyProfileRemoteDataSource{
  final http.Client _client;
  final LocalAuthRepository _localAuthRepository;

  CompanyProfileRemoteDataSourceImpl(this._client,
  this._localAuthRepository);

  @override
  Future<CompanyModel> getCompanyProfile(String id) async{
    Map<String,String>requestHeaders={
      "Accept":"application/json",
      "Content-Type":"application/json",
      "Authorization":"Bearer ${_localAuthRepository.getUserToken()}"
    };
    var url=Uri.parse("${AppConfig.baseUrl}/${AppConfig.companiesUrl}/${_localAuthRepository.getUserId()}");
    var response=await _client.get(url,headers: requestHeaders);
    var data=jsonDecode(response.body);
    try{
      if(response.statusCode==200){
        return CompanyModel.fromJson(data);
      }else {
        throw Exception(data['message']??'Getting company profile failed!');
      }
    }catch (e){
      throw Exception(e);
    }
  }

  @override
  Future<CompanyModel> updateCompanyInfo(String name, String address, String phoneNumber)async {
    Map<String,String>requestHeaders={
      "Accept":"application/json",
      "Content-Type":"application/json",
      "Authorization":"Bearer ${_localAuthRepository.getUserToken()}"
    };

    final response=await _client.patch(Uri.parse(AppConfig.baseUrl+AppConfig.companiesUrl),
    body: jsonEncode({"name":name,"address":address,"phoneNumber":phoneNumber}),headers: requestHeaders);

    if(response.statusCode==200||response.statusCode==201){
      final data=jsonDecode(response.body) as Map<String,dynamic>;
      return CompanyModel.fromJson(data);
    }
    throw Exception(
      'Failed to upload vacancy (HTTP ${response.statusCode}): ${response.body}',
    );

  }

}