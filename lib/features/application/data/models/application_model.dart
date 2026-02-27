import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobboardhrapp/config/app_config.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/resume/data/model/resume_model.dart';
import 'package:jobboardhrapp/features/user/data/model/user_model.dart';
part 'application_model.freezed.dart';
part 'application_model.g.dart';
List<ApplicationModel> applicationFromJson(dynamic str) =>
List<ApplicationModel>.from((str).map((e) => ApplicationModel.fromJson(e)));
@freezed

abstract class ApplicationModel with _$ApplicationModel {
   @JsonSerializable(explicitToJson:true ,anyMap: true) 

  factory ApplicationModel({
    @JsonKey(name: "_id") String? id,
    String? status,
    CompanyModel? company,
    ResumeModel? resume,
    UserModel? userId,
    String? vacancyId
   
  }) = _ApplicationModel;
  factory ApplicationModel.fromJson(Map<String, dynamic> json) =>
      _$ApplicationModelFromJson(json);
}