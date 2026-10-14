

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:jobboardhrapp/config/app_config.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/auth/data/repositories/local_auth_repository.dart';
abstract class CompanyProfileRemoteDataSource{

  Future<CompanyModel>getCompanyProfile(String id);
  Future<CompanyModel>updateCompanyInfo(String name,String address,String phoneNumber);
}

class CompanyProfileRemoteDataSourceImpl implements CompanyProfileRemoteDataSource{
  final Dio _dio;
  final LocalAuthRepository _localAuthRepository;

  CompanyProfileRemoteDataSourceImpl(this._dio,
  this._localAuthRepository);

  @override
  Future<CompanyModel> getCompanyProfile(String id) async{
    Map<String,String>requestHeaders={
      "Accept":"application/json",
      "Content-Type":"application/json",
      "Authorization":"Bearer ${_localAuthRepository.getUserToken()}"
    };
    final companyId=await _localAuthRepository.getUserToken();
    var url=Uri.parse("${AppConfig.baseUrl}/${AppConfig.companiesUrl}/${_localAuthRepository.getUserId()}");
    var response=await _dio.get('${AppConfig.companiesUrl}/$companyId');
    var data=jsonDecode(response.data);
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

    final response=await _dio.patch(AppConfig.companiesUrl,
    data:{"name":name,"address":address,"phoneNumber":phoneNumber});

    if(response.statusCode==200||response.statusCode==201){
      final data=jsonDecode(response.data) as Map<String,dynamic>;
      return CompanyModel.fromJson(data);
    }
    throw Exception(
      'Failed to upload vacancy (HTTP ${response.statusCode}): ${response.data}',
    );

  }

}