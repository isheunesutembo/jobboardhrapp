import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, CompanyModel>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
    required String address,
    required String phoneNumber,
  });

  Future<Either<Failure, CompanyModel>> logInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<bool> isLoggedIn();
}
