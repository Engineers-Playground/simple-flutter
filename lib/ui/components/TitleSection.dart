import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.topic,
    required this.description,
  });
  final String topic;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(topic, style: TextStyle(color: Colors.red[500])),
        Padding(padding: EdgeInsets.all(16.0)),
        Text(description, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}
