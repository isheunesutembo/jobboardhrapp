// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResumeModel _$ResumeModelFromJson(Map<String, dynamic> json) => _ResumeModel(
  id: json['_id'] as String?,
  title: json['title'] as String?,
  resume: json['resume'] as String?,
  userId: json['userId'] as String?,
);

Map<String, dynamic> _$ResumeModelToJson(_ResumeModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'resume': instance.resume,
      'userId': instance.userId,
    };
