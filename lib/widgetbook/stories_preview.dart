import 'package:flutter/material.dart';
import 'package:flutterchi/widgets/stories_preview.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: StoriesPreview)
Widget build(BuildContext context) {
  return Center(
    child: StoriesPreview(
      images: [
        "https://cdn.hashnode.com/res/hashnode/image/stock/unsplash/Gll-v69L8iA/upload/82ec7ecb832a51b79591c5de7381388b.jpeg",
        "https://cdn.hashnode.com/res/hashnode/image/stock/unsplash/Gll-v69L8iA/upload/82ec7ecb832a51b79591c5de7381388b.jpeg",
        "https://cdn.hashnode.com/res/hashnode/image/stock/unsplash/Gll-v69L8iA/upload/82ec7ecb832a51b79591c5de7381388b.jpeg",
      ],
    ),
  );
}

// @widgetbook.UseCase(name: "default", type: StoriesPreview)
