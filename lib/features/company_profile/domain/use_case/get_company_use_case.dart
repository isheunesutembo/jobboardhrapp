


import 'package:fpdart/src/effect.dart';
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/company_profile/data/datasource/company_profile_remote_datasource.dart';
import 'package:jobboardhrapp/features/company_profile/domain/repository/company_profile_repository.dart';

class GetCompanyProfileUseCase implements UseCase<String,GetCompanyProfileParams>{
  final CompanyProfileRepository companyProfileRepository;
  GetCompanyProfileUseCase(this.companyProfileRepository);

  @override
  Future<Either<Failure, String>> call(GetCompanyProfileParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }


}

class GetCompanyProfileParams{
  final String id;
  GetCompanyProfileParams(this.id);
}