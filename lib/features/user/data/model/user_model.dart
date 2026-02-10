import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobboardhrapp/config/app_config.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  @JsonSerializable()
  factory UserModel({
     String? userId,
    String? username,
    String? phone,
    String? email,
    String? profileImage,
   
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}