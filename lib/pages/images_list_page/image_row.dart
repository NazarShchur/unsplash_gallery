import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unsplash_gallery/entity/unsplash_image.dart';
import 'package:unsplash_gallery/pages/image_page/image_page.dart';
import 'package:unsplash_gallery/pages/images_list_page/style.dart';

class ImageRow extends StatelessWidget {
  final UnsplashImage image;

  ImageRow({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Style.borderColor)),
      height: Style.imageSize,
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                _onImageTap(context);
              },
              child: SizedBox(
                  width: Style.imageSize,
                  child: Image(
                    image: NetworkImage(image.mini),
                    fit: BoxFit.cover,
                  ))),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${Style.name}: ${image.name}", overflow: TextOverflow.ellipsis),
                Text("${Style.author}: ${image.author.firstName} ${image.author.lastName}")
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
