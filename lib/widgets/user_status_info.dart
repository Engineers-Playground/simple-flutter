import 'package:flutter/material.dart';
import 'package:flutterchi/constants.dart';
import 'package:flutterchi/widgets/stories_preview.dart';

class UserStatusInfo extends StatelessWidget {
  const UserStatusInfo({
    super.key,
    required this.userName,
    required this.storiesCount,
  });

  final String userName;
  final int storiesCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Text(
                storiesCount.toString() + " свежих истории",
                style: TextStyle(
                  fontSize: 15,
                  color: consts.colors.content.mediumContrast,
                ),
              ),
            ],
          ),
          Column(
            children: [
              StoriesPreview(
                images: [
                  "https://cdn.hashnode.com/res/hashnode/image/stock/unsplash/Gll-v69L8iA/upload/82ec7ecb832a51b79591c5de7381388b.jpeg",
                  "https://cdn.hashnode.com/res/hashnode/image/stock/unsplash/Gll-v69L8iA/upload/82ec7ecb832a51b79591c5de7381388b.jpeg",
                  "https://cdn.hashnode.com/res/hashnode/image/stock/unsplash/Gll-v69L8iA/upload/82ec7ecb832a51b79591c5de7381388b.jpeg",
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
