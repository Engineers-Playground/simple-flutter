import 'package:flutter/material.dart';
import '/ui/chatList.dart';
import '/widgets/FloatingBar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ChatApp")),
      floatingActionButton: FloatingBar(),
      body: ChatList(),
    );
  }
}
