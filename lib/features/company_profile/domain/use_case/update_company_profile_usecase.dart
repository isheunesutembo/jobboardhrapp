

import 'package:fpdart/src/effect.dart';
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/company_profile/data/datasource/company_profile_remote_datasource.dart';
import 'package:jobboardhrapp/features/company_profile/domain/repository/company_profile_repository.dart';

class CreateUpdateCompanyUseCase implements UseCase<CompanyModel,UpdateCompanyProfileParams>{
  final CompanyProfileRepository companyProfileRepository;
  CreateUpdateCompanyUseCase(this.companyProfileRepository);

  @override
  Future<Either<Failure, CompanyModel>> call(UpdateCompanyProfileParams params) async{
   
    return await companyProfileRepository.updateCompanyInfo(params.name,params.address, params.phoneNumber);
  }
  
}


class UpdateCompanyProfileParams{
  final name;
  final address;
  final phoneNumber;
  UpdateCompanyProfileParams({
    required this.name,
    required this.address,
    required this.phoneNumber
  });

}