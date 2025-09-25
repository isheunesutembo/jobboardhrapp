import 'package:fpdart/fpdart.dart';
import 'package:jobboardhrapp/core/error/failures.dart' hide Failure;
import 'package:jobboardhrapp/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/auth/domain/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  AuthRepositoryImpl(this._authRemoteDataSource);

  @override
  Future<Either<ErrorMessage, CompanyModel>> logInWithEmailAndPassword(
   {required  String email,
    required String password}
  ) async {
    try {
      final company = await _authRemoteDataSource.logInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(company);
    } catch (e) {
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  @override
  Future<Either<ErrorMessage, CompanyModel>> signUpWithEmailAndPassword({
   required  String email,
   required  String password,
    required String name,
    required String address,
    required String phoneNumber,
  }) async{
    try{
     final company=await _authRemoteDataSource.signUpWithEmailAndPassword(email: email, password: password, name: name, address: address, phoneNumber: phoneNumber);
     return Right(company);
    }catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }
}
