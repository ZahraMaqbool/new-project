// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Products {
  String name;
  String imageUrl;
  Products({
    required this.name,
    required this.imageUrl,
  });

  Products copyWith({
    String? name,
    String? imageUrl,
  }) {
    return Products(
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      name: map['name'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Products.fromJson(String source) => Products.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Products(name: $name, imageUrl: $imageUrl)';

  @override
  bool operator ==(covariant Products other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.imageUrl == imageUrl;
  }

  @override
  int get hashCode => name.hashCode ^ imageUrl.hashCode;
}
