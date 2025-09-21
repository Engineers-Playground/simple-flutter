import 'package:flutter/material.dart';
import '/widgets/Chat.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Chat(chat_index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
