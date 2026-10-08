// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vacancy_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VacancyModel {

 String? get title; String? get description; String? get requirements; List<String>? get skillTags; String? get experience; String? get salary; String? get benefits;//CompanyModel? company,
 String? get vacancyId;
/// Create a copy of VacancyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VacancyModelCopyWith<VacancyModel> get copyWith => _$VacancyModelCopyWithImpl<VacancyModel>(this as VacancyModel, _$identity);

  /// Serializes this VacancyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VacancyModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.requirements, requirements) || other.requirements == requirements)&&const DeepCollectionEquality().equals(other.skillTags, skillTags)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.benefits, benefits) || other.benefits == benefits)&&(identical(other.vacancyId, vacancyId) || other.vacancyId == vacancyId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,requirements,const DeepCollectionEquality().hash(skillTags),experience,salary,benefits,vacancyId);

@override
String toString() {
  return 'VacancyModel(title: $title, description: $description, requirements: $requirements, skillTags: $skillTags, experience: $experience, salary: $salary, benefits: $benefits, vacancyId: $vacancyId)';
}


}

/// @nodoc
abstract mixin class $VacancyModelCopyWith<$Res>  {
  factory $VacancyModelCopyWith(VacancyModel value, $Res Function(VacancyModel) _then) = _$VacancyModelCopyWithImpl;
@useResult
$Res call({
 String? title, String? description, String? requirements, List<String>? skillTags, String? experience, String? salary, String? benefits, String? vacancyId
});




}
/// @nodoc
class _$VacancyModelCopyWithImpl<$Res>
    implements $VacancyModelCopyWith<$Res> {
  _$VacancyModelCopyWithImpl(this._self, this._then);

  final VacancyModel _self;
  final $Res Function(VacancyModel) _then;

/// Create a copy of VacancyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? description = freezed,Object? requirements = freezed,Object? skillTags = freezed,Object? experience = freezed,Object? salary = freezed,Object? benefits = freezed,Object? vacancyId = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,requirements: freezed == requirements ? _self.requirements : requirements // ignore: cast_nullable_to_non_nullable
as String?,skillTags: freezed == skillTags ? _self.skillTags : skillTags // ignore: cast_nullable_to_non_nullable
as List<String>?,experience: freezed == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as String?,salary: freezed == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as String?,benefits: freezed == benefits ? _self.benefits : benefits // ignore: cast_nullable_to_non_nullable
as String?,vacancyId: freezed == vacancyId ? _self.vacancyId : vacancyId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VacancyModel].
extension VacancyModelPatterns on VacancyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VacancyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VacancyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VacancyModel value)  $default,){
final _that = this;
switch (_that) {
case _VacancyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VacancyModel value)?  $default,){
final _that = this;
switch (_that) {
case _VacancyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? description,  String? requirements,  List<String>? skillTags,  String? experience,  String? salary,  String? benefits,  String? vacancyId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VacancyModel() when $default != null:
return $default(_that.title,_that.description,_that.requirements,_that.skillTags,_that.experience,_that.salary,_that.benefits,_that.vacancyId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? description,  String? requirements,  List<String>? skillTags,  String? experience,  String? salary,  String? benefits,  String? vacancyId)  $default,) {final _that = this;
switch (_that) {
case _VacancyModel():
return $default(_that.title,_that.description,_that.requirements,_that.skillTags,_that.experience,_that.salary,_that.benefits,_that.vacancyId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? description,  String? requirements,  List<String>? skillTags,  String? experience,  String? salary,  String? benefits,  String? vacancyId)?  $default,) {final _that = this;
switch (_that) {
case _VacancyModel() when $default != null:
return $default(_that.title,_that.description,_that.requirements,_that.skillTags,_that.experience,_that.salary,_that.benefits,_that.vacancyId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, anyMap: true)
class _VacancyModel implements VacancyModel {
   _VacancyModel({this.title, this.description, this.requirements, final  List<String>? skillTags, this.experience, this.salary, this.benefits, this.vacancyId}): _skillTags = skillTags;
  factory _VacancyModel.fromJson(Map<String, dynamic> json) => _$VacancyModelFromJson(json);

@override final  String? title;
@override final  String? description;
@override final  String? requirements;
 final  List<String>? _skillTags;
@override List<String>? get skillTags {
  final value = _skillTags;
  if (value == null) return null;
  if (_skillTags is EqualUnmodifiableListView) return _skillTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? experience;
@override final  String? salary;
@override final  String? benefits;
//CompanyModel? company,
@override final  String? vacancyId;

/// Create a copy of VacancyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VacancyModelCopyWith<_VacancyModel> get copyWith => __$VacancyModelCopyWithImpl<_VacancyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VacancyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VacancyModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.requirements, requirements) || other.requirements == requirements)&&const DeepCollectionEquality().equals(other._skillTags, _skillTags)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.benefits, benefits) || other.benefits == benefits)&&(identical(other.vacancyId, vacancyId) || other.vacancyId == vacancyId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,requirements,const DeepCollectionEquality().hash(_skillTags),experience,salary,benefits,vacancyId);

@override
String toString() {
  return 'VacancyModel(title: $title, description: $description, requirements: $requirements, skillTags: $skillTags, experience: $experience, salary: $salary, benefits: $benefits, vacancyId: $vacancyId)';
}


}

/// @nodoc
abstract mixin class _$VacancyModelCopyWith<$Res> implements $VacancyModelCopyWith<$Res> {
  factory _$VacancyModelCopyWith(_VacancyModel value, $Res Function(_VacancyModel) _then) = __$VacancyModelCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? description, String? requirements, List<String>? skillTags, String? experience, String? salary, String? benefits, String? vacancyId
});




}
/// @nodoc
class __$VacancyModelCopyWithImpl<$Res>
    implements _$VacancyModelCopyWith<$Res> {
  __$VacancyModelCopyWithImpl(this._self, this._then);

  final _VacancyModel _self;
  final $Res Function(_VacancyModel) _then;

/// Create a copy of VacancyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? description = freezed,Object? requirements = freezed,Object? skillTags = freezed,Object? experience = freezed,Object? salary = freezed,Object? benefits = freezed,Object? vacancyId = freezed,}) {
  return _then(_VacancyModel(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,requirements: freezed == requirements ? _self.requirements : requirements // ignore: cast_nullable_to_non_nullable
as String?,skillTags: freezed == skillTags ? _self._skillTags : skillTags // ignore: cast_nullable_to_non_nullable
as List<String>?,experience: freezed == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as String?,salary: freezed == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as String?,benefits: freezed == benefits ? _self.benefits : benefits // ignore: cast_nullable_to_non_nullable
as String?,vacancyId: freezed == vacancyId ? _self.vacancyId : vacancyId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
