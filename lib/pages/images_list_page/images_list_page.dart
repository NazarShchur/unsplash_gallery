import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unsplash_gallery/entity/unsplash_image.dart';
import 'package:unsplash_gallery/repository/images_repository.dart';

import 'image_row.dart';

class ImagesListPage extends StatelessWidget {
  final UnsplashImagesRepository repository;

  const ImagesListPage({Key key, this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Images"),),
      body: Container(
        child: FutureBuilder<List<UnsplashImage>>(
          future: repository.images(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ImageRow(image: snapshot.data[index]);
                    },
                  )
                : CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
