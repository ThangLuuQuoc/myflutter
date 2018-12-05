import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);
  Widget build(context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Image.network(images[index].url);
        });
  }
}
