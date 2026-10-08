


import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/company_profile/data/datasource/company_profile_remote_datasource.dart';
import 'package:jobboardhrapp/features/company_profile/domain/repository/company_profile_repository.dart';

class CompanyProfileRepositoryImpl implements CompanyProfileRepository{

  final CompanyProfileRemoteDataSource _companyProfileRemoteDataSource;

  CompanyProfileRepositoryImpl(this._companyProfileRemoteDataSource);
  @override
  Future<Either<Failure, CompanyModel>> getCompanyProfile(String id) async{
   
    try{
      final companyProfile=await _companyProfileRemoteDataSource.getCompanyProfile(id);
      return Right(companyProfile);
    }catch(e){
     return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CompanyModel>> updateCompanyInfo(String name, String address, String phoneNumber) async{
   
    try{
      final companyProfile=await _companyProfileRemoteDataSource.updateCompanyInfo(name, address, phoneNumber);
      return Right(companyProfile);
    }catch(e){
      return Left(Failure(e.toString()));
    }
  }

}