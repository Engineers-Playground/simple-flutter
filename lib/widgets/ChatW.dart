import 'package:flutter/material.dart';
import '/ui/chat.dart';

class ChatW extends StatelessWidget {
  final int chat_index;
  ChatW({required this.chat_index});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Chat(messanger: "ism sharif"),
            ),
          );
        },
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                padding: EdgeInsets.only(right: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network("https://picsum.photos/250?image=9"),
                ),
                // child: Image.network(
                //   "https://picsum.photos/seed/$chat_index/1200/700",
                // ),
              ),
              // child: Container(
              //   padding: EdgeInsets.only(right: 8.0),
              //   child: CircleAvatar(
              //     // savol: shu image nega chiqmayapti?
              //     backgroundImage: NetworkImage(
              //       scale: 1.0,
              //       "https://picsum.photos/250?image=9",
              //     ),
              //   ),
              //   // child: Image.network(
              //   //   "https://picsum.photos/seed/$chat_index/1200/700",
              //   // ),
              // ),
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
                        children: [
                          Container(
                            height: 20,
                            margin: EdgeInsets.only(right: 8.0),
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.red,
                                  Colors.blueAccent.withOpacity(0.6),
                                ],
                              ),
                            ),
                            child: const Center(child: Text("1")),
                          ),
                          // ElevatedButton(
                          //   // style: BoxDecoration(
                          //   //
                          //   // ),
                          //   onPressed: () {},
                          //   child: Text(chat_index.toString()),
                          // ),
                          Text("12:03"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
