import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:unsplash_gallery/entity/unsplash_image.dart';
import 'package:unsplash_gallery/repository/images_repository.dart';
import 'package:http/http.dart' as http;

class UnsplashImagesRepositoryImpl implements UnsplashImagesRepository {
  final String IMAGES_URL = "https://api.unsplash.com/photos";
  final String CLIENT_ID = "f37iDGGcyAJynAKsco5MKuRkluRuo2OjysWIcZ4NmC8";

  @override
  Future<List<UnsplashImage>> images() async {
    List<dynamic> jsonList = jsonDecode((await http.get("$IMAGES_URL?client_id=$CLIENT_ID")).body);
    List<UnsplashImage> list = jsonList.map((json) => UnsplashImage.fromJson(json)).toList();
    return list;
  }
  
}