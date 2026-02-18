import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/features/vacancies/data/datasource/vacancy_remote_data_source.dart';
import 'package:jobboardhrapp/features/vacancies/data/model/vacancy_model.dart';
import 'package:jobboardhrapp/features/vacancies/domain/repository/vacancy_repository.dart';

class VacancyRepositoryImpl implements VacancyRepository{

  final VacancyRemoteDataSource _vacancyRemoteDataSource;

  VacancyRepositoryImpl(this._vacancyRemoteDataSource);
  @override
  Future<Either<Failure, VacancyModel>> addVacancy({required String title, required String description, required String requirements, required List<String> skillTags, required String salary, required String category, required String company}) async{
    try{
      final vacancy=await _vacancyRemoteDataSource.addVacancy(title: title, description: description, requirements: requirements, skillTags: skillTags, salary: salary, category: category, company: company);
      return Right(vacancy);
    }catch(e){
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<VacancyModel>>> getVacanciesByCompanyId() async{
  try{
    final vacancy=await _vacancyRemoteDataSource.getVacanciesByCompanyId();

    return Right(vacancyFromJson(vacancy));
  }catch(e){
    return Left(Failure(e.toString()));
  }
  }

}