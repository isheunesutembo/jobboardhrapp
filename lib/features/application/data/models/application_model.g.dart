// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApplicationModel _$ApplicationModelFromJson(Map json) => _ApplicationModel(
  id: json['_id'] as String?,
  status: json['status'] as String?,
  company:
      json['company'] == null
          ? null
          : CompanyModel.fromJson(
            Map<String, dynamic>.from(json['company'] as Map),
          ),
  resume:
      json['resume'] == null
          ? null
          : ResumeModel.fromJson(
            Map<String, dynamic>.from(json['resume'] as Map),
          ),
  userId:
      json['userId'] == null
          ? null
          : UserModel.fromJson(
            Map<String, dynamic>.from(json['userId'] as Map),
          ),
  vacancyId:
      json['vacancyId'] == null
          ? null
          : VacancyModel.fromJson(
            Map<String, dynamic>.from(json['vacancyId'] as Map),
          ),
);

Map<String, dynamic> _$ApplicationModelToJson(_ApplicationModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'status': instance.status,
      'company': instance.company?.toJson(),
      'resume': instance.resume?.toJson(),
      'userId': instance.userId?.toJson(),
      'vacancyId': instance.vacancyId?.toJson(),
    };
