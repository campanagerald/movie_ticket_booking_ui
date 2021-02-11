import 'dart:convert';

class Genres {
  String name;

  Genres({
    this.name,
  });

  Genres copyWith({
    String name,
  }) {
    return Genres(
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  factory Genres.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Genres(
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Genres.fromJson(String source) => Genres.fromMap(json.decode(source));

  @override
  String toString() => 'Genres(name: $name)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Genres && o.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
