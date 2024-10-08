// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class OnBoardingModel {
  final String title;
  final String subTitle;
  final String image;
  OnBoardingModel({
    required this.title,
    required this.subTitle,
    required this.image,
  });

  OnBoardingModel copyWith({
    String? title,
    String? subTitle,
    String? image,
  }) {
    return OnBoardingModel(
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'subTitle': subTitle,
      'image': image,
    };
  }

  factory OnBoardingModel.fromMap(Map<String, dynamic> map) {
    return OnBoardingModel(
      title: map['title'] as String,
      subTitle: map['subTitle'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OnBoardingModel.fromJson(String source) => OnBoardingModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'OnBoardingModel(title: $title, subTitle: $subTitle, image: $image)';

  @override
  bool operator ==(covariant OnBoardingModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.subTitle == subTitle &&
      other.image == image;
  }

  @override
  int get hashCode => title.hashCode ^ subTitle.hashCode ^ image.hashCode;
}
