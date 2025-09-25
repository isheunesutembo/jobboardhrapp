// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) {
  return _CompanyModel.fromJson(json);
}

/// @nodoc
mixin _$CompanyModel {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this CompanyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyModelCopyWith<CompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyModelCopyWith<$Res> {
  factory $CompanyModelCopyWith(
    CompanyModel value,
    $Res Function(CompanyModel) then,
  ) = _$CompanyModelCopyWithImpl<$Res, CompanyModel>;
  @useResult
  $Res call({
    @JsonKey(name: "_id") String? id,
    String? password,
    String? name,
    String? address,
    String? phoneNumber,
  });
}

/// @nodoc
class _$CompanyModelCopyWithImpl<$Res, $Val extends CompanyModel>
    implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            password:
                freezed == password
                    ? _value.password
                    : password // ignore: cast_nullable_to_non_nullable
                        as String?,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            address:
                freezed == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String?,
            phoneNumber:
                freezed == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CompanyModelImplCopyWith<$Res>
    implements $CompanyModelCopyWith<$Res> {
  factory _$$CompanyModelImplCopyWith(
    _$CompanyModelImpl value,
    $Res Function(_$CompanyModelImpl) then,
  ) = __$$CompanyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "_id") String? id,
    String? password,
    String? name,
    String? address,
    String? phoneNumber,
  });
}

/// @nodoc
class __$$CompanyModelImplCopyWithImpl<$Res>
    extends _$CompanyModelCopyWithImpl<$Res, _$CompanyModelImpl>
    implements _$$CompanyModelImplCopyWith<$Res> {
  __$$CompanyModelImplCopyWithImpl(
    _$CompanyModelImpl _value,
    $Res Function(_$CompanyModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(
      _$CompanyModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        password:
            freezed == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        address:
            freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String?,
        phoneNumber:
            freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, anyMap: true)
class _$CompanyModelImpl implements _CompanyModel {
  _$CompanyModelImpl({
    @JsonKey(name: "_id") this.id,
    this.password,
    this.name,
    this.address,
    this.phoneNumber,
  });

  factory _$CompanyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? password;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'CompanyModel(id: $id, password: $password, name: $name, address: $address, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, password, name, address, phoneNumber);

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyModelImplCopyWith<_$CompanyModelImpl> get copyWith =>
      __$$CompanyModelImplCopyWithImpl<_$CompanyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyModelImplToJson(this);
  }
}

abstract class _CompanyModel implements CompanyModel {
  factory _CompanyModel({
    @JsonKey(name: "_id") final String? id,
    final String? password,
    final String? name,
    final String? address,
    final String? phoneNumber,
  }) = _$CompanyModelImpl;

  factory _CompanyModel.fromJson(Map<String, dynamic> json) =
      _$CompanyModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get password;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get phoneNumber;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyModelImplCopyWith<_$CompanyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
