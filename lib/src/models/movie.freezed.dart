// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
class _$MovieTearOff {
  const _$MovieTearOff();

// ignore: unused_element
  _Movie call({int id, Details details, Credits credits}) {
    return _Movie(
      id: id,
      details: details,
      credits: credits,
    );
  }

// ignore: unused_element
  Movie fromJson(Map<String, Object> json) {
    return Movie.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Movie = _$MovieTearOff();

/// @nodoc
mixin _$Movie {
  int get id;
  Details get details;
  Credits get credits;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call({int id, Details details, Credits credits});

  $DetailsCopyWith<$Res> get details;
  $CreditsCopyWith<$Res> get credits;
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object id = freezed,
    Object details = freezed,
    Object credits = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      details: details == freezed ? _value.details : details as Details,
      credits: credits == freezed ? _value.credits : credits as Credits,
    ));
  }

  @override
  $DetailsCopyWith<$Res> get details {
    if (_value.details == null) {
      return null;
    }
    return $DetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }

  @override
  $CreditsCopyWith<$Res> get credits {
    if (_value.credits == null) {
      return null;
    }
    return $CreditsCopyWith<$Res>(_value.credits, (value) {
      return _then(_value.copyWith(credits: value));
    });
  }
}

/// @nodoc
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
  @override
  $Res call({int id, Details details, Credits credits});

  @override
  $DetailsCopyWith<$Res> get details;
  @override
  $CreditsCopyWith<$Res> get credits;
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(_Movie _value, $Res Function(_Movie) _then)
      : super(_value, (v) => _then(v as _Movie));

  @override
  _Movie get _value => super._value as _Movie;

  @override
  $Res call({
    Object id = freezed,
    Object details = freezed,
    Object credits = freezed,
  }) {
    return _then(_Movie(
      id: id == freezed ? _value.id : id as int,
      details: details == freezed ? _value.details : details as Details,
      credits: credits == freezed ? _value.credits : credits as Credits,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Movie implements _Movie {
  _$_Movie({this.id, this.details, this.credits});

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieFromJson(json);

  @override
  final int id;
  @override
  final Details details;
  @override
  final Credits credits;

  @override
  String toString() {
    return 'Movie(id: $id, details: $details, credits: $credits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Movie &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.credits, credits) ||
                const DeepCollectionEquality().equals(other.credits, credits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(credits);

  @JsonKey(ignore: true)
  @override
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieToJson(this);
  }
}

abstract class _Movie implements Movie {
  factory _Movie({int id, Details details, Credits credits}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  int get id;
  @override
  Details get details;
  @override
  Credits get credits;
  @override
  @JsonKey(ignore: true)
  _$MovieCopyWith<_Movie> get copyWith;
}
