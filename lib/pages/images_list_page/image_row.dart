import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unsplash_gallery/entity/unsplash_image.dart';
import 'package:unsplash_gallery/pages/image_page/image_page.dart';

class ImageRow extends StatelessWidget {
  final UnsplashImage image;

  ImageRow({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      height: 100,
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                _onImageTap(context);
              },
              child: SizedBox(
                  width: 100,
                  child: Image(
                    image: NetworkImage(image.mini),
                    fit: BoxFit.cover,
                  ))),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name: ${image.name}", overflow: TextOverflow.ellipsis),
                Text("Author: ${image.author.firstName} ${image.author.lastName}")
              ],
            ),
          )
        ],
      ),
    );
  }

  void _onImageTap(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ImagePage(image: image)));
  }
}
