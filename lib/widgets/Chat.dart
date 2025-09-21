import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  final int chat_index;
  Chat({required this.chat_index});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.grey, Colors.blueGrey.withOpacity(0.2)],
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Column(children: [Text("Ism Sharif"), Text("Oxirgi xabar")]),
          ),
          Expanded(flex: 1, child: Text(chat_index.toString())),
        ],
      ),
    );
  }
}
