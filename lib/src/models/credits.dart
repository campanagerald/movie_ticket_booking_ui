import 'package:freezed_annotation/freezed_annotation.dart';

import 'cast.dart';

part 'credits.freezed.dart';
part 'credits.g.dart';

@freezed
abstract class Credits with _$Credits {
  factory Credits({
    List<Cast> cast,
  }) = _Credits;
  factory Credits.fromJson(Map<String, dynamic> json) =>
      _$CreditsFromJson(json);
}
