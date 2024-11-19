// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Restaurant {
  String title;

  String subTitle;
  String imageUrl;
  Restaurant({
    required this.title,
    required this.subTitle,
    required this.imageUrl,
  });

  Restaurant copyWith({
    String? title,
    String? subTitle,
    String? imageUrl,
  }) {
    return Restaurant(
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'subTitle': subTitle,
      'imageUrl': imageUrl,
    };
  }

  factory Restaurant.fromMap(Map<String, dynamic> map) {
    return Restaurant(
      title: map['title'] as String,
      subTitle: map['subTitle'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Restaurant.fromJson(String source) =>
      Restaurant.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Restaurant(title: $title, subTitle: $subTitle, imageUrl: $imageUrl)';

  @override
  bool operator ==(covariant Restaurant other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.subTitle == subTitle &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode => title.hashCode ^ subTitle.hashCode ^ imageUrl.hashCode;
}
