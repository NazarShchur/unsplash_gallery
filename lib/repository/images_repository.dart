import 'package:unsplash_gallery/entity/unsplash_image.dart';

abstract class UnsplashImagesRepository{
  Future<List<UnsplashImage>> images();
}