import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/features/application/data/datasource/application_remote_data_source.dart';
import 'package:jobboardhrapp/features/application/data/models/application_model.dart';
import 'package:jobboardhrapp/features/application/domain/repository/application_repository.dart';

import '../../../../core/error/failures.dart';

class ApplicationRepositoryImpl implements ApplicationRepository {
  final ApplicationRemoteDataSource _applicationRemoteDataSource;

  ApplicationRepositoryImpl(this._applicationRemoteDataSource);

  @override
  Future<Either<Failure, List<ApplicationModel>>>
  getApplicationsByCompanyId() async {
    try {
      final application =
          await _applicationRemoteDataSource.getApplicationsByCompanyId();

      return Right(application);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
