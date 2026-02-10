// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResumeModelImpl _$$ResumeModelImplFromJson(Map<String, dynamic> json) =>
    _$ResumeModelImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      resume: json['resume'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$ResumeModelImplToJson(_$ResumeModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'resume': instance.resume,
      'userId': instance.userId,
    };
