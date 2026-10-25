import 'package:dio/dio.dart';
import 'package:jobboardhrapp/config/app_config.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/auth/data/repositories/local_auth_repository.dart';
abstract class CompanyProfileRemoteDataSource{

  Future<CompanyModel>getCompanyProfile();
  Future<CompanyModel>updateCompanyInfo(String name,String address,String phoneNumber);
}

class CompanyProfileRemoteDataSourceImpl implements CompanyProfileRemoteDataSource{
  final Dio _dio;
  final LocalAuthRepository _localAuthRepository;

  CompanyProfileRemoteDataSourceImpl(this._dio,
  this._localAuthRepository);

  @override
  Future<CompanyModel> getCompanyProfile() async{
    
    final companyId= _localAuthRepository.getUserId();
    
    var response=await _dio.get('${AppConfig.companiesUrl}/$companyId');
    var data=response.data;
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
   
     final companyId=_localAuthRepository.getUserId();
    final response=await _dio.patch("${AppConfig.companiesUrl}/$companyId",
    data:{"name":name,"address":address,"phoneNumber":phoneNumber});

    if(response.statusCode==200||response.statusCode==201){
      final data=response.data as Map<String,dynamic>;
      return CompanyModel.fromJson(data);
    }
    throw Exception(
      'Failed to upload vacancy (HTTP ${response.statusCode}): ${response.data}',
    );

  }

}