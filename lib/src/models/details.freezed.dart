// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Details _$DetailsFromJson(Map<String, dynamic> json) {
  return _Details.fromJson(json);
}

/// @nodoc
class _$DetailsTearOff {
  const _$DetailsTearOff();

// ignore: unused_element
  _Details call(
      {@JsonKey(name: 'backdropPath') String backdropPath,
      List<Genres> genres,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      @JsonKey(name: 'poster_path') String posterPath,
      int runtime,
      double voteAverage}) {
    return _Details(
      backdropPath: backdropPath,
      genres: genres,
      originalTitle: originalTitle,
      overview: overview,
      posterPath: posterPath,
      runtime: runtime,
      voteAverage: voteAverage,
    );
  }

// ignore: unused_element
  Details fromJson(Map<String, Object> json) {
    return Details.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Details = _$DetailsTearOff();

/// @nodoc
mixin _$Details {
  @JsonKey(name: 'backdropPath')
  String get backdropPath;
  List<Genres> get genres;
  @JsonKey(name: 'original_title')
  String get originalTitle;
  String get overview;
  @JsonKey(name: 'poster_path')
  String get posterPath;
  int get runtime;
  double get voteAverage;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DetailsCopyWith<Details> get copyWith;
}

/// @nodoc
abstract class $DetailsCopyWith<$Res> {
  factory $DetailsCopyWith(Details value, $Res Function(Details) then) =
      _$DetailsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'backdropPath') String backdropPath,
      List<Genres> genres,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      @JsonKey(name: 'poster_path') String posterPath,
      int runtime,
      double voteAverage});
}

/// @nodoc
class _$DetailsCopyWithImpl<$Res> implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(this._value, this._then);

  final Details _value;
  // ignore: unused_field
  final $Res Function(Details) _then;

  @override
  $Res call({
    Object backdropPath = freezed,
    Object genres = freezed,
    Object originalTitle = freezed,
    Object overview = freezed,
    Object posterPath = freezed,
    Object runtime = freezed,
    Object voteAverage = freezed,
  }) {
    return _then(_value.copyWith(
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
      genres: genres == freezed ? _value.genres : genres as List<Genres>,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle as String,
      overview: overview == freezed ? _value.overview : overview as String,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      runtime: runtime == freezed ? _value.runtime : runtime as int,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
    ));
  }
}

/// @nodoc
abstract class _$DetailsCopyWith<$Res> implements $DetailsCopyWith<$Res> {
  factory _$DetailsCopyWith(_Details value, $Res Function(_Details) then) =
      __$DetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'backdropPath') String backdropPath,
      List<Genres> genres,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      @JsonKey(name: 'poster_path') String posterPath,
      int runtime,
      double voteAverage});
}

/// @nodoc
class __$DetailsCopyWithImpl<$Res> extends _$DetailsCopyWithImpl<$Res>
    implements _$DetailsCopyWith<$Res> {
  __$DetailsCopyWithImpl(_Details _value, $Res Function(_Details) _then)
      : super(_value, (v) => _then(v as _Details));

  @override
  _Details get _value => super._value as _Details;

  @override
  $Res call({
    Object backdropPath = freezed,
    Object genres = freezed,
    Object originalTitle = freezed,
    Object overview = freezed,
    Object posterPath = freezed,
    Object runtime = freezed,
    Object voteAverage = freezed,
  }) {
    return _then(_Details(
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
      genres: genres == freezed ? _value.genres : genres as List<Genres>,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle as String,
      overview: overview == freezed ? _value.overview : overview as String,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      runtime: runtime == freezed ? _value.runtime : runtime as int,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Details implements _Details {
  _$_Details(
      {@JsonKey(name: 'backdropPath') this.backdropPath,
      this.genres,
      @JsonKey(name: 'original_title') this.originalTitle,
      this.overview,
      @JsonKey(name: 'poster_path') this.posterPath,
      this.runtime,
      this.voteAverage});

  factory _$_Details.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailsFromJson(json);

  @override
  @JsonKey(name: 'backdropPath')
  final String backdropPath;
  @override
  final List<Genres> genres;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  final String overview;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  final int runtime;
  @override
  final double voteAverage;

  @override
  String toString() {
    return 'Details(backdropPath: $backdropPath, genres: $genres, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, runtime: $runtime, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Details &&
            (identical(other.backdropPath, backdropPath) ||
                const DeepCollectionEquality()
                    .equals(other.backdropPath, backdropPath)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)) &&
            (identical(other.originalTitle, originalTitle) ||
                const DeepCollectionEquality()
                    .equals(other.originalTitle, originalTitle)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)) &&
            (identical(other.runtime, runtime) ||
                const DeepCollectionEquality()
                    .equals(other.runtime, runtime)) &&
            (identical(other.voteAverage, voteAverage) ||
                const DeepCollectionEquality()
                    .equals(other.voteAverage, voteAverage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(backdropPath) ^
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(originalTitle) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(posterPath) ^
      const DeepCollectionEquality().hash(runtime) ^
      const DeepCollectionEquality().hash(voteAverage);

  @JsonKey(ignore: true)
  @override
  _$DetailsCopyWith<_Details> get copyWith =>
      __$DetailsCopyWithImpl<_Details>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailsToJson(this);
  }
}

abstract class _Details implements Details {
  factory _Details(
      {@JsonKey(name: 'backdropPath') String backdropPath,
      List<Genres> genres,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      @JsonKey(name: 'poster_path') String posterPath,
      int runtime,
      double voteAverage}) = _$_Details;

  factory _Details.fromJson(Map<String, dynamic> json) = _$_Details.fromJson;

  @override
  @JsonKey(name: 'backdropPath')
  String get backdropPath;
  @override
  List<Genres> get genres;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  String get overview;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  int get runtime;
  @override
  double get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$DetailsCopyWith<_Details> get copyWith;
}
