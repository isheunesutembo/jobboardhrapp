import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_model.freezed.dart';
part 'category_model.g.dart';
List<CategoryModel> categoryFromJson(dynamic str) =>
List<CategoryModel>.from((str).map((e) => CategoryModel.fromJson(e)));
@freezed

abstract class CategoryModel with _$CategoryModel {
 
  
  factory CategoryModel({
    
    String? title,
    String? image,
    String? categoryId
    
   
  }) = _CategoryModel;
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}