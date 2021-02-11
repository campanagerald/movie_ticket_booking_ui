import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'cast.dart';

class Credits {
  List<Cast> cast;

  Credits({
    this.cast,
  });

  Credits copyWith({
    List<Cast> cast,
  }) {
    return Credits(
      cast: cast ?? this.cast,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cast': cast?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory Credits.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Credits(
      cast: List<Cast>.from(map['cast']?.map((x) => Cast.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Credits.fromJson(String source) =>
      Credits.fromMap(json.decode(source));

  @override
  String toString() => 'Credits(cast: $cast)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Credits && listEquals(o.cast, cast);
  }

  @override
  int get hashCode => cast.hashCode;
}
