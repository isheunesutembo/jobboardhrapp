import 'package:freezed_annotation/freezed_annotation.dart';
part 'company_model.freezed.dart';
part 'company_model.g.dart';

@freezed
abstract class CompanyModel with _$CompanyModel {
  @JsonSerializable()
  factory CompanyModel({
    @JsonKey(name: "_id") String? id,
    String? password,
    String? name,
    String? address,
    String? phoneNumber,
    String? logo
  }) = _CompanyModel;
  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}
/*extension CompanyModelExtension on CompanyModel {
  String get fullProfileImagePath=>AppConfig.fullImageUrl+profileImage.toString();
}
*/