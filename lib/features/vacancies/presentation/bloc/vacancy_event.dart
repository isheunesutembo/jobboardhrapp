
part of 'vacancy_bloc.dart';

@immutable  
sealed class VacancyEvent{}

final class CreateVacancy extends VacancyEvent{
final String title; 
final String description; 
final String requirements;
 final List<String> skillTags; 
 final String salary; 
 final String category; 
 final String company;

 CreateVacancy({
  required this.title,
  required this.description,
  required this.requirements,
  required this.skillTags,
  required this.salary,
  required this.category,
  required this.company
 });
}

final class GetVacancies extends VacancyEvent{

}