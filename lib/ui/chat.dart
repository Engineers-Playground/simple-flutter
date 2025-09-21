import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key, required this.messanger});
  final String messanger;
  @override
  Widget build(BuildContext context) {
    return Text("your chat is none of my business " + messanger);
  }
}
