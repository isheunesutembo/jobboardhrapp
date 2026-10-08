// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyModel {

 String? get password; String? get name; String? get address; String? get phoneNumber; String? get email; String? get companyId; String? get logo;
/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<CompanyModel> get copyWith => _$CompanyModelCopyWithImpl<CompanyModel>(this as CompanyModel, _$identity);

  /// Serializes this CompanyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyModel&&(identical(other.password, password) || other.password == password)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.logo, logo) || other.logo == logo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,password,name,address,phoneNumber,email,companyId,logo);

@override
String toString() {
  return 'CompanyModel(password: $password, name: $name, address: $address, phoneNumber: $phoneNumber, email: $email, companyId: $companyId, logo: $logo)';
}


}

/// @nodoc
abstract mixin class $CompanyModelCopyWith<$Res>  {
  factory $CompanyModelCopyWith(CompanyModel value, $Res Function(CompanyModel) _then) = _$CompanyModelCopyWithImpl;
@useResult
$Res call({
 String? password, String? name, String? address, String? phoneNumber, String? email, String? companyId, String? logo
});




}
/// @nodoc
class _$CompanyModelCopyWithImpl<$Res>
    implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._self, this._then);

  final CompanyModel _self;
  final $Res Function(CompanyModel) _then;

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? password = freezed,Object? name = freezed,Object? address = freezed,Object? phoneNumber = freezed,Object? email = freezed,Object? companyId = freezed,Object? logo = freezed,}) {
  return _then(_self.copyWith(
password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyModel].
extension CompanyModelPatterns on CompanyModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyModel value)  $default,){
final _that = this;
switch (_that) {
case _CompanyModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyModel value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? password,  String? name,  String? address,  String? phoneNumber,  String? email,  String? companyId,  String? logo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
return $default(_that.password,_that.name,_that.address,_that.phoneNumber,_that.email,_that.companyId,_that.logo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? password,  String? name,  String? address,  String? phoneNumber,  String? email,  String? companyId,  String? logo)  $default,) {final _that = this;
switch (_that) {
case _CompanyModel():
return $default(_that.password,_that.name,_that.address,_that.phoneNumber,_that.email,_that.companyId,_that.logo);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? password,  String? name,  String? address,  String? phoneNumber,  String? email,  String? companyId,  String? logo)?  $default,) {final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
return $default(_that.password,_that.name,_that.address,_that.phoneNumber,_that.email,_that.companyId,_that.logo);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, anyMap: true)
class _CompanyModel implements CompanyModel {
   _CompanyModel({this.password, this.name, this.address, this.phoneNumber, this.email, this.companyId, this.logo});
  factory _CompanyModel.fromJson(Map<String, dynamic> json) => _$CompanyModelFromJson(json);

@override final  String? password;
@override final  String? name;
@override final  String? address;
@override final  String? phoneNumber;
@override final  String? email;
@override final  String? companyId;
@override final  String? logo;

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyModelCopyWith<_CompanyModel> get copyWith => __$CompanyModelCopyWithImpl<_CompanyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyModel&&(identical(other.password, password) || other.password == password)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.logo, logo) || other.logo == logo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,password,name,address,phoneNumber,email,companyId,logo);

@override
String toString() {
  return 'CompanyModel(password: $password, name: $name, address: $address, phoneNumber: $phoneNumber, email: $email, companyId: $companyId, logo: $logo)';
}


}

/// @nodoc
abstract mixin class _$CompanyModelCopyWith<$Res> implements $CompanyModelCopyWith<$Res> {
  factory _$CompanyModelCopyWith(_CompanyModel value, $Res Function(_CompanyModel) _then) = __$CompanyModelCopyWithImpl;
@override @useResult
$Res call({
 String? password, String? name, String? address, String? phoneNumber, String? email, String? companyId, String? logo
});




}
/// @nodoc
class __$CompanyModelCopyWithImpl<$Res>
    implements _$CompanyModelCopyWith<$Res> {
  __$CompanyModelCopyWithImpl(this._self, this._then);

  final _CompanyModel _self;
  final $Res Function(_CompanyModel) _then;

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? password = freezed,Object? name = freezed,Object? address = freezed,Object? phoneNumber = freezed,Object? email = freezed,Object? companyId = freezed,Object? logo = freezed,}) {
  return _then(_CompanyModel(
password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
