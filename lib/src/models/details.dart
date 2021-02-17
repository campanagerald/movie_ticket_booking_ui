import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_ticket_booking_ui/src/models/genres.dart';

part 'details.freezed.dart';
part 'details.g.dart';

@freezed
abstract class Details with _$Details {
  factory Details({
    @JsonKey(name: 'backdropPath') String backdropPath,
    List<Genres> genres,
    @JsonKey(name: 'original_title') String originalTitle,
    String overview,
    @JsonKey(name: 'poster_path') String posterPath,
    int runtime,
    double voteAverage,
  }) = _Details;
  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);
}
