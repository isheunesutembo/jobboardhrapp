


import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/features/vacancies/data/model/vacancy_model.dart';

abstract interface class VacancyRepository {

  Future<Either<Failure,VacancyModel>>addVacancy({
    required String title,
   required String description,
   required String requirements,
   required String experience,
   required List<String>skillTags,
   required String salary,
   required String category,
   
  });

  Future<Either<Failure,List<VacancyModel>>>getVacanciesByCompanyId();
}
