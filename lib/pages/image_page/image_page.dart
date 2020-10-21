import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unsplash_gallery/entity/unsplash_image.dart';

class ImagePage extends StatelessWidget {
  final UnsplashImage image;

  const ImagePage({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Image(
            image: NetworkImage(image.normal),
          ),
        ),
      ),
    );
  }

}