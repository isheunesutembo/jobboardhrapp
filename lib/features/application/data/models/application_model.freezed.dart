// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApplicationModel {

@JsonKey(name: "_id") String? get id; String? get status; CompanyModel? get company; ResumeModel? get resume; UserModel? get userId; VacancyModel? get vacancyId;
/// Create a copy of ApplicationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicationModelCopyWith<ApplicationModel> get copyWith => _$ApplicationModelCopyWithImpl<ApplicationModel>(this as ApplicationModel, _$identity);

  /// Serializes this ApplicationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.company, company) || other.company == company)&&(identical(other.resume, resume) || other.resume == resume)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.vacancyId, vacancyId) || other.vacancyId == vacancyId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,company,resume,userId,vacancyId);

@override
String toString() {
  return 'ApplicationModel(id: $id, status: $status, company: $company, resume: $resume, userId: $userId, vacancyId: $vacancyId)';
}


}

/// @nodoc
abstract mixin class $ApplicationModelCopyWith<$Res>  {
  factory $ApplicationModelCopyWith(ApplicationModel value, $Res Function(ApplicationModel) _then) = _$ApplicationModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String? id, String? status, CompanyModel? company, ResumeModel? resume, UserModel? userId, VacancyModel? vacancyId
});


$CompanyModelCopyWith<$Res>? get company;$ResumeModelCopyWith<$Res>? get resume;$UserModelCopyWith<$Res>? get userId;$VacancyModelCopyWith<$Res>? get vacancyId;

}
/// @nodoc
class _$ApplicationModelCopyWithImpl<$Res>
    implements $ApplicationModelCopyWith<$Res> {
  _$ApplicationModelCopyWithImpl(this._self, this._then);

  final ApplicationModel _self;
  final $Res Function(ApplicationModel) _then;

/// Create a copy of ApplicationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? status = freezed,Object? company = freezed,Object? resume = freezed,Object? userId = freezed,Object? vacancyId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyModel?,resume: freezed == resume ? _self.resume : resume // ignore: cast_nullable_to_non_nullable
as ResumeModel?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserModel?,vacancyId: freezed == vacancyId ? _self.vacancyId : vacancyId // ignore: cast_nullable_to_non_nullable
as VacancyModel?,
  ));
}
/// Create a copy of ApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<$Res>? get company {
    if (_self.company == null) {
    return null;
  }

  return $CompanyModelCopyWith<$Res>(_self.company!, (value) {
    return _then(_self.copyWith(company: value));
  });
}/// Create a copy of ApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResumeModelCopyWith<$Res>? get resume {
    if (_self.resume == null) {
    return null;
  }

  return $ResumeModelCopyWith<$Res>(_self.resume!, (value) {
    return _then(_self.copyWith(resume: value));
  });
}/// Create a copy of ApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get userId {
    if (_self.userId == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.userId!, (value) {
    return _then(_self.copyWith(userId: value));
  });
}/// Create a copy of ApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VacancyModelCopyWith<$Res>? get vacancyId {
    if (_self.vacancyId == null) {
    return null;
  }

  return $VacancyModelCopyWith<$Res>(_self.vacancyId!, (value) {
    return _then(_self.copyWith(vacancyId: value));
  });
}
}


/// Adds pattern-matching-related methods to [ApplicationModel].
extension ApplicationModelPatterns on ApplicationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApplicationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApplicationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApplicationModel value)  $default,){
final _that = this;
switch (_that) {
case _ApplicationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApplicationModel value)?  $default,){
final _that = this;
switch (_that) {
case _ApplicationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id,  String? status,  CompanyModel? company,  ResumeModel? resume,  UserModel? userId,  VacancyModel? vacancyId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApplicationModel() when $default != null:
return $default(_that.id,_that.status,_that.company,_that.resume,_that.userId,_that.vacancyId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id,  String? status,  CompanyModel? company,  ResumeModel? resume,  UserModel? userId,  VacancyModel? vacancyId)  $default,) {final _that = this;
switch (_that) {
case _ApplicationModel():
return $default(_that.id,_that.status,_that.company,_that.resume,_that.userId,_that.vacancyId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String? id,  String? status,  CompanyModel? company,  ResumeModel? resume,  UserModel? userId,  VacancyModel? vacancyId)?  $default,) {final _that = this;
switch (_that) {
case _ApplicationModel() when $default != null:
return $default(_that.id,_that.status,_that.company,_that.resume,_that.userId,_that.vacancyId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, anyMap: true)
class _ApplicationModel implements ApplicationModel {
   _ApplicationModel({@JsonKey(name: "_id") this.id, this.status, this.company, this.resume, this.userId, this.vacancyId});
  factory _ApplicationModel.fromJson(Map<String, dynamic> json) => _$ApplicationModelFromJson(json);

@override@JsonKey(name: "_id") final  String? id;
@override final  String? status;
@override final  CompanyModel? company;
@override final  ResumeModel? resume;
@override final  UserModel? userId;
@override final  VacancyModel? vacancyId;

/// Create a copy of ApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplicationModelCopyWith<_ApplicationModel> get copyWith => __$ApplicationModelCopyWithImpl<_ApplicationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApplicationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplicationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.company, company) || other.company == company)&&(identical(other.resume, resume) || other.resume == resume)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.vacancyId, vacancyId) || other.vacancyId == vacancyId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,company,resume,userId,vacancyId);

@override
String toString() {
  return 'ApplicationModel(id: $id, status: $status, company: $company, resume: $resume, userId: $userId, vacancyId: $vacancyId)';
}


}

/// @nodoc
abstract mixin class _$ApplicationModelCopyWith<$Res> implements $ApplicationModelCopyWith<$Res> {
  factory _$ApplicationModelCopyWith(_ApplicationModel value, $Res Function(_ApplicationModel) _then) = __$ApplicationModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String? id, String? status, CompanyModel? company, ResumeModel? resume, UserModel? userId, VacancyModel? vacancyId
});


@override $CompanyModelCopyWith<$Res>? get company;@override $ResumeModelCopyWith<$Res>? get resume;@override $UserModelCopyWith<$Res>? get userId;@override $VacancyModelCopyWith<$Res>? get vacancyId;

}
/// @nodoc
class __$ApplicationModelCopyWithImpl<$Res>
    implements _$ApplicationModelCopyWith<$Res> {
  __$ApplicationModelCopyWithImpl(this._self, this._then);

  final _ApplicationModel _self;
  final $Res Function(_ApplicationModel) _then;

/// Create a copy of ApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? status = freezed,Object? company = freezed,Object? resume = freezed,Object? userId = freezed,Object? vacancyId = freezed,}) {
  return _then(_ApplicationModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyModel?,resume: freezed == resume ? _self.resume : resume // ignore: cast_nullable_to_non_nullable
as ResumeModel?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserModel?,vacancyId: freezed == vacancyId ? _self.vacancyId : vacancyId // ignore: cast_nullable_to_non_nullable
as VacancyModel?,
  ));
}

/// Create a copy of ApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<$Res>? get company {
    if (_self.company == null) {
    return null;
  }

  return $CompanyModelCopyWith<$Res>(_self.company!, (value) {
    return _then(_self.copyWith(company: value));
  });
}/// Create a copy of ApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResumeModelCopyWith<$Res>? get resume {
    if (_self.resume == null) {
    return null;
  }

  return $ResumeModelCopyWith<$Res>(_self.resume!, (value) {
    return _then(_self.copyWith(resume: value));
  });
}/// Create a copy of ApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get userId {
    if (_self.userId == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.userId!, (value) {
    return _then(_self.copyWith(userId: value));
  });
}/// Create a copy of ApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VacancyModelCopyWith<$Res>? get vacancyId {
    if (_self.vacancyId == null) {
    return null;
  }

  return $VacancyModelCopyWith<$Res>(_self.vacancyId!, (value) {
    return _then(_self.copyWith(vacancyId: value));
  });
}
}

// dart format on
