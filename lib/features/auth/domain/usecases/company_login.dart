import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/auth/domain/auth_repository.dart';

class CompanyLogInUseCase implements UseCase<CompanyModel, CompanyLogInParams> {
  final AuthRepository authRepository;
  CompanyLogInUseCase(this.authRepository);

  @override
  Future<Either<Failure, CompanyModel>> call(params) async {
    return await authRepository.logInWithEmailAndPassword(
      email: params.email,
      password: params.password,
    );
  }
}

class CompanyLogInParams {
  final String email;
  final String password;
  CompanyLogInParams({required this.email, required this.password});
}
