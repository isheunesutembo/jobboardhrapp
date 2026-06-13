
part of 'vacancy_bloc.dart';

@immutable  
sealed class VacancyEvent{}

final class CreateVacancy extends VacancyEvent{
final String title; 
final String description; 
final String requirements;
 final List<String> skillTags; 
 final String experience;
 final String salary; 
 final String category; 


 CreateVacancy({
  required this.title,
  required this.description,
  required this.requirements,
  required this.skillTags,
  required this.experience,
  required this.salary,
  required this.category,
  
 });
}

final class GetVacancies extends VacancyEvent{
    
}