import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobboardhrapp/config/app_config.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/resume/data/model/resume_model.dart';
import 'package:jobboardhrapp/features/user/data/model/user_model.dart';
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