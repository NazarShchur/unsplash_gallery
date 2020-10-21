import 'package:unsplash_gallery/entity/author.dart';

class UnsplashImage {
  String name;
  Author author;
  String mini;
  String normal;

  UnsplashImage({this.name, this.author, this.mini, this.normal});

  factory UnsplashImage.fromJson(Map<String, dynamic> json){
    return UnsplashImage(
      name: json["description"] ?? json["id"],
      author: Author(
        firstName: json["user"]["first_name"],
        lastName: json["user"]["last_name"] ?? ""
      ),
      mini: json["urls"]["small"],
      normal: json["urls"]["regular"]
    );
  }



}