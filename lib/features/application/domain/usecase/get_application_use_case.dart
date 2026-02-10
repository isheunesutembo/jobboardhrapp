
import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/application/data/models/application_model.dart';
import 'package:jobboardhrapp/features/application/domain/repository/application_repository.dart';

class GetApplicationUseCase implements UseCase<List<ApplicationModel>,NoParams>{

  final ApplicationRepository _applicationRepository;

  GetApplicationUseCase(this._applicationRepository);
  @override
  Future<Either<Failure, List<ApplicationModel>>> call(NoParams params) async{
    
    return await  _applicationRepository.getApplicationsByCompanyId();
  }

}