import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'genres.dart';

class Details {
  String backdropPath;
  List<Genres> genres;
  String originalTitle;
  String overview;
  String posterPath;
  int runtime;
  double voteAverage;

  Details({
    this.backdropPath,
    this.genres,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.runtime,
    this.voteAverage,
  });

  Details copyWith({
    String backdropPath,
    List<Genres> genres,
    String originalTitle,
    String overview,
    String posterPath,
    int runtime,
    double voteAverage,
  }) {
    return Details(
      backdropPath: backdropPath ?? this.backdropPath,
      genres: genres ?? this.genres,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      posterPath: posterPath ?? this.posterPath,
      runtime: runtime ?? this.runtime,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'backdrop_path': backdropPath,
      'genres': genres?.map((x) => x?.toMap())?.toList(),
      'original_title': originalTitle,
      'overview': overview,
      'poster_path': posterPath,
      'runtime': runtime,
      'vote_average': voteAverage,
    };
  }

  factory Details.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Details(
      backdropPath: map['backdrop_path'],
      genres: List<Genres>.from(map['genres']?.map((x) => Genres.fromMap(x))),
      originalTitle: map['original_title'],
      overview: map['overview'],
      posterPath: map['poster_path'],
      runtime: map['runtime'],
      voteAverage: map['vote_average'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Details.fromJson(String source) =>
      Details.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Details(backdropPath: $backdropPath, genres: $genres, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, runtime: $runtime, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Details &&
        o.backdropPath == backdropPath &&
        listEquals(o.genres, genres) &&
        o.originalTitle == originalTitle &&
        o.overview == overview &&
        o.posterPath == posterPath &&
        o.runtime == runtime &&
        o.voteAverage == voteAverage;
  }

  @override
  int get hashCode {
    return backdropPath.hashCode ^
        genres.hashCode ^
        originalTitle.hashCode ^
        overview.hashCode ^
        posterPath.hashCode ^
        runtime.hashCode ^
        voteAverage.hashCode;
  }
}
