// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApplicationModel _$ApplicationModelFromJson(Map<String, dynamic> json) =>
    _ApplicationModel(
      id: _readApplicationId(json, 'applicationId') as String?,
      status: json['status'] as String?,
      company:
          json['company'] == null
              ? null
              : CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
      resume:
          json['resume'] == null
              ? null
              : ResumeModel.fromJson(json['resume'] as Map<String, dynamic>),
      userId:
          json['userId'] == null
              ? null
              : UserModel.fromJson(json['userId'] as Map<String, dynamic>),
      vacancyId:
          json['vacancyId'] == null
              ? null
              : VacancyModel.fromJson(
                json['vacancyId'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$ApplicationModelToJson(_ApplicationModel instance) =>
    <String, dynamic>{
      'applicationId': instance.id,
      'status': instance.status,
      'company': instance.company,
      'resume': instance.resume,
      'userId': instance.userId,
      'vacancyId': instance.vacancyId,
    };
