// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResumeModel {

@JsonKey(name: "_id") String? get id; String? get title; String? get resume; String? get userId;
/// Create a copy of ResumeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResumeModelCopyWith<ResumeModel> get copyWith => _$ResumeModelCopyWithImpl<ResumeModel>(this as ResumeModel, _$identity);

  /// Serializes this ResumeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResumeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.resume, resume) || other.resume == resume)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,resume,userId);

@override
String toString() {
  return 'ResumeModel(id: $id, title: $title, resume: $resume, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $ResumeModelCopyWith<$Res>  {
  factory $ResumeModelCopyWith(ResumeModel value, $Res Function(ResumeModel) _then) = _$ResumeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String? id, String? title, String? resume, String? userId
});




}
/// @nodoc
class _$ResumeModelCopyWithImpl<$Res>
    implements $ResumeModelCopyWith<$Res> {
  _$ResumeModelCopyWithImpl(this._self, this._then);

  final ResumeModel _self;
  final $Res Function(ResumeModel) _then;

/// Create a copy of ResumeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? resume = freezed,Object? userId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,resume: freezed == resume ? _self.resume : resume // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResumeModel].
extension ResumeModelPatterns on ResumeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResumeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResumeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResumeModel value)  $default,){
final _that = this;
switch (_that) {
case _ResumeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResumeModel value)?  $default,){
final _that = this;
switch (_that) {
case _ResumeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id,  String? title,  String? resume,  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResumeModel() when $default != null:
return $default(_that.id,_that.title,_that.resume,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id,  String? title,  String? resume,  String? userId)  $default,) {final _that = this;
switch (_that) {
case _ResumeModel():
return $default(_that.id,_that.title,_that.resume,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String? id,  String? title,  String? resume,  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _ResumeModel() when $default != null:
return $default(_that.id,_that.title,_that.resume,_that.userId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable()
class _ResumeModel implements ResumeModel {
   _ResumeModel({@JsonKey(name: "_id") this.id, this.title, this.resume, this.userId});
  factory _ResumeModel.fromJson(Map<String, dynamic> json) => _$ResumeModelFromJson(json);

@override@JsonKey(name: "_id") final  String? id;
@override final  String? title;
@override final  String? resume;
@override final  String? userId;

/// Create a copy of ResumeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResumeModelCopyWith<_ResumeModel> get copyWith => __$ResumeModelCopyWithImpl<_ResumeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResumeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResumeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.resume, resume) || other.resume == resume)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,resume,userId);

@override
String toString() {
  return 'ResumeModel(id: $id, title: $title, resume: $resume, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$ResumeModelCopyWith<$Res> implements $ResumeModelCopyWith<$Res> {
  factory _$ResumeModelCopyWith(_ResumeModel value, $Res Function(_ResumeModel) _then) = __$ResumeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String? id, String? title, String? resume, String? userId
});




}
/// @nodoc
class __$ResumeModelCopyWithImpl<$Res>
    implements _$ResumeModelCopyWith<$Res> {
  __$ResumeModelCopyWithImpl(this._self, this._then);

  final _ResumeModel _self;
  final $Res Function(_ResumeModel) _then;

/// Create a copy of ResumeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? resume = freezed,Object? userId = freezed,}) {
  return _then(_ResumeModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,resume: freezed == resume ? _self.resume : resume // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
