import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobboardhrapp/config/app_config.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/resume/data/model/resume_model.dart';
import 'package:jobboardhrapp/features/user/data/model/user_model.dart';
import 'package:jobboardhrapp/features/vacancies/data/model/category_model.dart';
part 'vacancy_model.freezed.dart';
part 'vacancy_model.g.dart';
List<VacancyModel> vacancyFromJson(dynamic str) =>
List<VacancyModel>.from((str).map((e) => VacancyModel.fromJson(e)));
@freezed

abstract class VacancyModel with _$VacancyModel {
    @JsonSerializable(explicitToJson: true,anyMap: true)
  factory VacancyModel({
    String? vacancyId,
    String? title,
    String? salary,
    String? description,
   CompanyModel? company,
    String? requirements,
    List<String>? skillTags,
  }) = _VacancyModel;
  factory VacancyModel.fromJson(Map<String, dynamic> json) =>
      _$VacancyModelFromJson(json);
}