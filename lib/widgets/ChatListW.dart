import 'package:flutter/material.dart';
import '/widgets/ChatW.dart';

class ChatListW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ChatW(chat_index: index);
        },
      ),
    );
  }
}
