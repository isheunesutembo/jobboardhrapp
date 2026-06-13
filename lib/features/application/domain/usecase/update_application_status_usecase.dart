import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/application/domain/repository/application_repository.dart';


class UpdateApplicationUseCase implements UseCase<String, UpdateStatusParams> {
  final ApplicationRepository applicationRepository;
  UpdateApplicationUseCase(this.applicationRepository);

  @override
  Future<Either<Failure, String>> call(params) async {
    return await applicationRepository.updateApplicationStatus(
      params.applicationId,
      params.status,
    );
  }
}

class UpdateStatusParams {
  final String applicationId;
  final String status;
  UpdateStatusParams({required this.applicationId, required this.status});
}
