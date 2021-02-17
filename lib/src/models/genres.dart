// import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'genres.freezed.dart';
part 'genres.g.dart';

@freezed
abstract class Genres with _$Genres {
  factory Genres({String name, int age}) = _Genres;
  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
}
