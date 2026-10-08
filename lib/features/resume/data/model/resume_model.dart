import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobboardhrapp/config/app_config.dart';
part 'resume_model.freezed.dart';
part 'resume_model.g.dart';

@freezed
abstract class ResumeModel with _$ResumeModel {
 
  factory ResumeModel({
    @JsonKey(name: "_id") String? id,
    String? title,
    String? resume,
    String? userId,
   
  }) = _ResumeModel;
  factory ResumeModel.fromJson(Map<String, dynamic> json) =>
      _$ResumeModelFromJson(json);
}

extension ResumeExt on ResumeModel {
  String get fullResumePath => AppConfig.fullResumeUrl + resume!;
}