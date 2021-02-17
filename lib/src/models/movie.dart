import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_ticket_booking_ui/src/models/credits.dart';
import 'package:movie_ticket_booking_ui/src/models/details.dart';

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
// import 'dart:convert';

// import 'credits.dart';
// import 'details.dart';

// class Movie {
//   int id;
//   Details details;
//   Credits credits;

//   Movie({
//     this.id,
//     this.details,
//     this.credits,
//   });

//   Movie copyWith({
//     int id,
//     Details details,
//     Credits credits,
//   }) {
//     return Movie(
//       id: id ?? this.id,
//       details: details ?? this.details,
//       credits: credits ?? this.credits,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'details': details?.toMap(),
//       'credits': credits?.toMap(),
//     };
//   }

//   factory Movie.fromMap(Map<String, dynamic> map) {
//     if (map == null) return null;

//     return Movie(
//       id: map['id'],
//       details: Details.fromMap(map['details']),
//       credits: Credits.fromMap(map['credits']),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Movie.fromJson(String source) => Movie.fromMap(json.decode(source));

//   @override
//   String toString() => 'Movie(id: $id, details: $details, credits: $credits)';

//   @override
//   bool operator ==(Object o) {
//     if (identical(this, o)) return true;

//     return o is Movie &&
//         o.id == id &&
//         o.details == details &&
//         o.credits == credits;
//   }

//   @override
//   int get hashCode => id.hashCode ^ details.hashCode ^ credits.hashCode;
// }
