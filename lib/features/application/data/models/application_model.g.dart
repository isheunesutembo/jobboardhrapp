// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplicationModelImpl _$$ApplicationModelImplFromJson(
  Map<String, dynamic> json,
) => _$ApplicationModelImpl(
  id: json['_id'] as String?,
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
  vacancyId: json['vacancyId'] as String?,
);

Map<String, dynamic> _$$ApplicationModelImplToJson(
  _$ApplicationModelImpl instance,
) => <String, dynamic>{
  '_id': instance.id,
  'status': instance.status,
  'company': instance.company,
  'resume': instance.resume,
  'userId': instance.userId,
  'vacancyId': instance.vacancyId,
};
