
import 'package:flutter/material.dart';
import 'package:unsplash_gallery/pages/images_list_page/images_list_page.dart';
import 'package:unsplash_gallery/repository/images_repository.dart';
import 'package:unsplash_gallery/repository/images_repository_impl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final UnsplashImagesRepository repository =
      new UnsplashImagesRepositoryImpl();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ImagesListPage(repository: repository),
    );
  }
}
