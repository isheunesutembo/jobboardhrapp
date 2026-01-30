import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';

abstract interface class UseCase<SuccessTypes, Params> {
  Future<Either<Failure, SuccessTypes>> call(Params params);
}

class NoParams {}
