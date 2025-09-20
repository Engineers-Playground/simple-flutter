import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({super.key, required this.alt, required this.img});
  final String alt;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Image(image: NetworkImage(img));
  }
}
