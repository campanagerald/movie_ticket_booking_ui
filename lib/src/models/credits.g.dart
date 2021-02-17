// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Credits _$_$_CreditsFromJson(Map<String, dynamic> json) {
  return _$_Credits(
    cast: (json['cast'] as List)
        ?.map(
            (e) => e == null ? null : Cast.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CreditsToJson(_$_Credits instance) =>
    <String, dynamic>{
      'cast': instance.cast,
    };
