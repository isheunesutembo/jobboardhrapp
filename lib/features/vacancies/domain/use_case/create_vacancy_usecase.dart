import 'package:fpdart/src/effect.dart';
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/vacancies/data/model/vacancy_model.dart';
import 'package:jobboardhrapp/features/vacancies/domain/repository/vacancy_repository.dart';

class CreateVacancyUseCase
    implements UseCase<VacancyModel, CreateVacancyParams> {
  final VacancyRepository vacancyRepository;
  CreateVacancyUseCase(this.vacancyRepository);
  @override
  Future<Either<Failure, VacancyModel>> call(params) async {
    return await vacancyRepository.addVacancy(
      title: params.title,
      description: params.description,
      requirements: params.requirements,
      skillTags: params.skillTags,
      experience: params.experience,
      salary: params.salary,
      category: params.category,
     
    );
  }
}

class CreateVacancyParams {
  final String title;
  final String description;
  final String requirements;
  final List<String> skillTags;
  final String experience;
  final String salary;
  final String category;


  CreateVacancyParams({
    required this.title,
    required this.description,
    required this.requirements,
    required this.skillTags,
    required this.experience,
    required this.salary,
    required this.category,
    
  });
}
