import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/auth/domain/auth_repository.dart';

class CompanySignUpUsecase
    implements UseCase<CompanyModel, CompanySignUpParams> {
  final AuthRepository authRepository;

  CompanySignUpUsecase(this.authRepository);

  @override
  Future<Either<Failure, CompanyModel>> call(params) async {
    return await authRepository.signUpWithEmailAndPassword(
      email: params.email,
      password: params.password,
      name: params.name,
      address: params.address,
      phoneNumber: params.phoneNumber,
    );
  }
}

class CompanySignUpParams {
  final String email;
  final String password;
  final String name;
  final String address;
  final String phoneNumber;

  CompanySignUpParams({
    required this.email,
    required this.password,
    required this.name,
    required this.address,
    required this.phoneNumber,
  });
}
