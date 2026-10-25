



import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/company_profile/domain/repository/company_profile_repository.dart';

class GetCompanyProfileUseCase implements UseCase<CompanyModel,NoParams>{
  final CompanyProfileRepository companyProfileRepository;
  GetCompanyProfileUseCase(this.companyProfileRepository);

  @override
  Future<Either<Failure, CompanyModel>> call(NoParams params) {
    return companyProfileRepository.getCompanyProfile();
    
  }


}

