import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast.freezed.dart';
part 'cast.g.dart';

@freezed
abstract class Cast with _$Cast {
  factory Cast({
    @JsonKey(name: 'original_name') String originalName,
    String character,
    @JsonKey(name: 'profile_path') String profilePath,
  }) = _Cast;
  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
