import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';

class StoriesPreview extends StatelessWidget {
  const StoriesPreview({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ImageStack(
            imageList: images,
            imageRadius: 40,
            imageCount: images.length,
            imageBorderWidth: 0,
            totalCount: 3,
            showTotalCount: false,
            imageBorderColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
