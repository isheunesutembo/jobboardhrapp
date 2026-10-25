



import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
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
  final String name;
  final String address;
  final String phoneNumber;
  final String logo;
 
  UpdateCompanyProfileParams({
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.logo,
  
  });

}