import 'package:fpdart/fpdart.dart'hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/vacancies/data/model/vacancy_model.dart';
import 'package:jobboardhrapp/features/vacancies/domain/repository/vacancy_repository.dart';

class GettingVacancyUsecase implements UseCase<List<VacancyModel>,NoParams>{
  final VacancyRepository _vacancyRepository;
  GettingVacancyUsecase(this._vacancyRepository);
  @override
  Future<Either<Failure, List<VacancyModel>>> call(NoParams params) async{
   return await _vacancyRepository.getVacanciesByCompanyId();
  }

}