import 'package:freezed_annotation/freezed_annotation.dart';

import 'credits.dart';
import 'details.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
abstract class Movie with _$Movie {
  factory Movie({
    int id,
    Details details,
    Credits credits,
  }) = _Movie;
  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
