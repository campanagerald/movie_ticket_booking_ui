// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
class _$CastTearOff {
  const _$CastTearOff();

// ignore: unused_element
  _Cast call(
      {@JsonKey(name: 'original_name') String originalName,
      String character,
      @JsonKey(name: 'profile_path') String profilePath}) {
    return _Cast(
      originalName: originalName,
      character: character,
      profilePath: profilePath,
    );
  }

// ignore: unused_element
  Cast fromJson(Map<String, Object> json) {
    return Cast.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Cast = _$CastTearOff();

/// @nodoc
mixin _$Cast {
  @JsonKey(name: 'original_name')
  String get originalName;
  String get character;
  @JsonKey(name: 'profile_path')
  String get profilePath;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'original_name') String originalName,
      String character,
      @JsonKey(name: 'profile_path') String profilePath});
}

/// @nodoc
class _$CastCopyWithImpl<$Res> implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  final Cast _value;
  // ignore: unused_field
  final $Res Function(Cast) _then;

  @override
  $Res call({
    Object originalName = freezed,
    Object character = freezed,
    Object profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      originalName: originalName == freezed
          ? _value.originalName
          : originalName as String,
      character: character == freezed ? _value.character : character as String,
      profilePath:
          profilePath == freezed ? _value.profilePath : profilePath as String,
    ));
  }
}

/// @nodoc
abstract class _$CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$CastCopyWith(_Cast value, $Res Function(_Cast) then) =
      __$CastCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'original_name') String originalName,
      String character,
      @JsonKey(name: 'profile_path') String profilePath});
}

/// @nodoc
class __$CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res>
    implements _$CastCopyWith<$Res> {
  __$CastCopyWithImpl(_Cast _value, $Res Function(_Cast) _then)
      : super(_value, (v) => _then(v as _Cast));

  @override
  _Cast get _value => super._value as _Cast;

  @override
  $Res call({
    Object originalName = freezed,
    Object character = freezed,
    Object profilePath = freezed,
  }) {
    return _then(_Cast(
      originalName: originalName == freezed
          ? _value.originalName
          : originalName as String,
      character: character == freezed ? _value.character : character as String,
      profilePath:
          profilePath == freezed ? _value.profilePath : profilePath as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Cast implements _Cast {
  _$_Cast(
      {@JsonKey(name: 'original_name') this.originalName,
      this.character,
      @JsonKey(name: 'profile_path') this.profilePath});

  factory _$_Cast.fromJson(Map<String, dynamic> json) =>
      _$_$_CastFromJson(json);

  @override
  @JsonKey(name: 'original_name')
  final String originalName;
  @override
  final String character;
  @override
  @JsonKey(name: 'profile_path')
  final String profilePath;

  @override
  String toString() {
    return 'Cast(originalName: $originalName, character: $character, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cast &&
            (identical(other.originalName, originalName) ||
                const DeepCollectionEquality()
                    .equals(other.originalName, originalName)) &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)) &&
            (identical(other.profilePath, profilePath) ||
                const DeepCollectionEquality()
                    .equals(other.profilePath, profilePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(originalName) ^
      const DeepCollectionEquality().hash(character) ^
      const DeepCollectionEquality().hash(profilePath);

  @JsonKey(ignore: true)
  @override
  _$CastCopyWith<_Cast> get copyWith =>
      __$CastCopyWithImpl<_Cast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CastToJson(this);
  }
}

abstract class _Cast implements Cast {
  factory _Cast(
      {@JsonKey(name: 'original_name') String originalName,
      String character,
      @JsonKey(name: 'profile_path') String profilePath}) = _$_Cast;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$_Cast.fromJson;

  @override
  @JsonKey(name: 'original_name')
  String get originalName;
  @override
  String get character;
  @override
  @JsonKey(name: 'profile_path')
  String get profilePath;
  @override
  @JsonKey(ignore: true)
  _$CastCopyWith<_Cast> get copyWith;
}
