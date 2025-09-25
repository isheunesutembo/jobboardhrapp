// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyModelImpl _$$CompanyModelImplFromJson(Map json) => _$CompanyModelImpl(
  id: json['_id'] as String?,
  password: json['password'] as String?,
  name: json['name'] as String?,
  address: json['address'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
);

Map<String, dynamic> _$$CompanyModelImplToJson(_$CompanyModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'password': instance.password,
      'name': instance.name,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
    };
