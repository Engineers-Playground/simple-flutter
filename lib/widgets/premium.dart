import 'package:flutter/material.dart';
import 'package:flutterchi/constants.dart';

class Premium extends StatelessWidget {
  const Premium({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 12),
      margin: EdgeInsets.all(2),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.purpleAccent,
            Colors.blueAccent,
            // Colors.blueAccent,
            Colors.purpleAccent,
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        spacing: 16,
        children: [
          Icon(
            Icons.card_giftcard,
            color: consts.colors.accent.bluePrimary,
            size: 18,
          ),
          Text(title, style: TextStyle(color: Colors.white, fontSize: 15)),
          // question: how to put image with absolute positioning
          // Spacer(flex: 1),
          // Image.network(data["image"], width: 60),
        ],
      ),
    );
  }
}
