import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  final int chat_index;
  Chat({required this.chat_index});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.all(5.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                // savol: shu image nega chiqmayapti?
                backgroundImage: NetworkImage(
                  scale: 1.0,
                  "https://picsum.photos/250?image=9",
                ),
              ),
              // child: Image.network(
              //   "https://picsum.photos/seed/$chat_index/1200/700",
              // ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Ism Sharif"), Text("Oxirgi xabar")],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Text(chat_index.toString())],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
