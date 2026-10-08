// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  userId: json['userId'] as String?,
  username: json['username'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  profileImage: json['profileImage'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'phone': instance.phone,
      'email': instance.email,
      'profileImage': instance.profileImage,
    };
