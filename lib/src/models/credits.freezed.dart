// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'credits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Credits _$CreditsFromJson(Map<String, dynamic> json) {
  return _Credits.fromJson(json);
}

/// @nodoc
class _$CreditsTearOff {
  const _$CreditsTearOff();

// ignore: unused_element
  _Credits call({List<Cast> cast}) {
    return _Credits(
      cast: cast,
    );
  }

// ignore: unused_element
  Credits fromJson(Map<String, Object> json) {
    return Credits.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Credits = _$CreditsTearOff();

/// @nodoc
mixin _$Credits {
  List<Cast> get cast;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CreditsCopyWith<Credits> get copyWith;
}

/// @nodoc
abstract class $CreditsCopyWith<$Res> {
  factory $CreditsCopyWith(Credits value, $Res Function(Credits) then) =
      _$CreditsCopyWithImpl<$Res>;
  $Res call({List<Cast> cast});
}

/// @nodoc
class _$CreditsCopyWithImpl<$Res> implements $CreditsCopyWith<$Res> {
  _$CreditsCopyWithImpl(this._value, this._then);

  final Credits _value;
  // ignore: unused_field
  final $Res Function(Credits) _then;

  @override
  $Res call({
    Object cast = freezed,
  }) {
    return _then(_value.copyWith(
      cast: cast == freezed ? _value.cast : cast as List<Cast>,
    ));
  }
}

/// @nodoc
abstract class _$CreditsCopyWith<$Res> implements $CreditsCopyWith<$Res> {
  factory _$CreditsCopyWith(_Credits value, $Res Function(_Credits) then) =
      __$CreditsCopyWithImpl<$Res>;
  @override
  $Res call({List<Cast> cast});
}

/// @nodoc
class __$CreditsCopyWithImpl<$Res> extends _$CreditsCopyWithImpl<$Res>
    implements _$CreditsCopyWith<$Res> {
  __$CreditsCopyWithImpl(_Credits _value, $Res Function(_Credits) _then)
      : super(_value, (v) => _then(v as _Credits));

  @override
  _Credits get _value => super._value as _Credits;

  @override
  $Res call({
    Object cast = freezed,
  }) {
    return _then(_Credits(
      cast: cast == freezed ? _value.cast : cast as List<Cast>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Credits implements _Credits {
  _$_Credits({this.cast});

  factory _$_Credits.fromJson(Map<String, dynamic> json) =>
      _$_$_CreditsFromJson(json);

  @override
  final List<Cast> cast;

  @override
  String toString() {
    return 'Credits(cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Credits &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cast);

  @JsonKey(ignore: true)
  @override
  _$CreditsCopyWith<_Credits> get copyWith =>
      __$CreditsCopyWithImpl<_Credits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreditsToJson(this);
  }
}

abstract class _Credits implements Credits {
  factory _Credits({List<Cast> cast}) = _$_Credits;

  factory _Credits.fromJson(Map<String, dynamic> json) = _$_Credits.fromJson;

  @override
  List<Cast> get cast;
  @override
  @JsonKey(ignore: true)
  _$CreditsCopyWith<_Credits> get copyWith;
}
