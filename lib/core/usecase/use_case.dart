
import 'package:fpdart/fpdart.dart';
import 'package:jobboardhrapp/core/error/failures.dart';

abstract interface class UseCase<SuccessTypes,Params>{
  Future<Either<ErrorMessage,SuccessTypes>>call(Params params);
}

class NoParams{}