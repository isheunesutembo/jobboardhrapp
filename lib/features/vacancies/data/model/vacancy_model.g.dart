// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VacancyModelImpl _$$VacancyModelImplFromJson(
  Map<String, dynamic> json,
) => _$VacancyModelImpl(
  vacancyId: json['vacancyId'] as String?,
  title: json['title'] as String?,
  salary: json['salary'] as String?,
  description: json['description'] as String?,
  company:
      json['company'] == null
          ? null
          : CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
  category:
      json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
  requirements: json['requirements'] as String?,
  skillTags:
      (json['skillTags'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$$VacancyModelImplToJson(_$VacancyModelImpl instance) =>
    <String, dynamic>{
      'vacancyId': instance.vacancyId,
      'title': instance.title,
      'salary': instance.salary,
      'description': instance.description,
      'company': instance.company,
      'category': instance.category,
      'requirements': instance.requirements,
      'skillTags': instance.skillTags,
    };
