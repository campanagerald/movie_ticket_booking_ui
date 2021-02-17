// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Details _$_$_DetailsFromJson(Map<String, dynamic> json) {
  return _$_Details(
    backdropPath: json['backdropPath'] as String,
    genres: (json['genres'] as List)
        ?.map((e) =>
            e == null ? null : Genres.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    originalTitle: json['original_title'] as String,
    overview: json['overview'] as String,
    posterPath: json['poster_path'] as String,
    runtime: json['runtime'] as int,
    voteAverage: (json['voteAverage'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_DetailsToJson(_$_Details instance) =>
    <String, dynamic>{
      'backdropPath': instance.backdropPath,
      'genres': instance.genres,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'runtime': instance.runtime,
      'voteAverage': instance.voteAverage,
    };
