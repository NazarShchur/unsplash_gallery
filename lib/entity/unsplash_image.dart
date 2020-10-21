import 'package:unsplash_gallery/entity/author.dart';

class UnsplashImage {
  String name;
  Author author;
  String url;

  UnsplashImage({this.name, this.author, this.url});

  factory UnsplashImage.fromJson(Map<String, dynamic> json){
    return UnsplashImage(
      name: json["description"],
      author: Author(
        firstName: json["user"]["first_name"],
        lastName: json["user"]["last_name"]
      ),
      url: json["urls"]["raw"]
    );
  }

  @override
  String toString() {
    return 'UnsplashImage{name: $name, author: $author, url: $url}';
  }


}