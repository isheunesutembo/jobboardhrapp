part of 'vacancy_bloc.dart';



@immutable  
sealed class VacancyState{

}

final class VacancyInitial extends VacancyState{

}

final class VacancyLoading extends VacancyState{}

final class CreateVacancySuccess extends VacancyState{
  final VacancyModel vacancyModel;
  CreateVacancySuccess(this.vacancyModel);
}

final class GettingVacanciesSuccess extends VacancyState{
  final List<VacancyModel> vacancyModel;
  GettingVacanciesSuccess(this.vacancyModel);
}

final class VacancyFailure extends VacancyState{
  final String message;
   VacancyFailure(this.message);
}