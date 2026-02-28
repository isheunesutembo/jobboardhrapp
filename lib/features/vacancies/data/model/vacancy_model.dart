import'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';

part 'vacancy_model.freezed.dart';
part 'vacancy_model.g.dart';
List<VacancyModel> vacanciesFromJson(dynamic str) =>
   List<VacancyModel>.from((str).map((e) => VacancyModel.fromJson(e)));
@freezed

abstract class VacancyModel with _$VacancyModel{
@JsonSerializable(explicitToJson: true,anyMap: true)
factory VacancyModel
({
  String? title,
  String? description,
  String? requirements,
  List<String>? skillTags,
  String? experience,
  String? salary,
  String? benefits,
  //CompanyModel? company,
  String? vacancyId
  })=_VacancyModel;
    factory VacancyModel.fromJson(Map<String,dynamic>json)=> _$VacancyModelFromJson(json);
}