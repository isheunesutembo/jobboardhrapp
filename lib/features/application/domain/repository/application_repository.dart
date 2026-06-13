
import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/features/application/data/models/application_model.dart';

abstract interface class ApplicationRepository{
  Future<Either<Failure,List<ApplicationModel>>>getApplicationsByCompanyId();
  Future<Either<Failure,String>>updateApplicationStatus(String applicationId,String status);
}