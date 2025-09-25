

import 'package:fpdart/src/effect.dart';
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/auth/domain/auth_repository.dart';

class CompanyLogInUseCase implements UseCase<CompanyModel,CompanyLogInParams>{
   final AuthRepository authRepository;
   CompanyLogInUseCase(this.authRepository);

  @override
  Future<Either<ErrorMessage, CompanyModel>> call(params) async{
    
    return await authRepository
    .logInWithEmailAndPassword(email: params.email, password: params.password);
  }

   
}

class CompanyLogInParams{
    final email;
    final password;
    CompanyLogInParams({
      required this.email,
      required this.password
    });
   }