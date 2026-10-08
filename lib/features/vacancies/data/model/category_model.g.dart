// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryModel _$CategoryModelFromJson(Map json) => _CategoryModel(
  title: json['title'] as String?,
  image: json['image'] as String?,
  categoryId: json['categoryId'] as String?,
);

Map<String, dynamic> _$CategoryModelToJson(_CategoryModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'categoryId': instance.categoryId,
    };
