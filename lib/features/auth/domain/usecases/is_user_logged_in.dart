import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/auth/domain/auth_repository.dart';

class IsUserLoggedIn implements UseCase<bool, NoParams> {
  final AuthRepository _authRepository;

  IsUserLoggedIn(this._authRepository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    final result = await _authRepository.isLoggedIn();
    return Right(result);
  }
}
