// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VacancyModel _$VacancyModelFromJson(Map json) => _VacancyModel(
  title: json['title'] as String?,
  description: json['description'] as String?,
  requirements: json['requirements'] as String?,
  skillTags:
      (json['skillTags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  experience: json['experience'] as String?,
  salary: json['salary'] as String?,
  benefits: json['benefits'] as String?,
  vacancyId: json['vacancyId'] as String?,
);

Map<String, dynamic> _$VacancyModelToJson(_VacancyModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'requirements': instance.requirements,
      'skillTags': instance.skillTags,
      'experience': instance.experience,
      'salary': instance.salary,
      'benefits': instance.benefits,
      'vacancyId': instance.vacancyId,
    };
