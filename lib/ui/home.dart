import 'package:flutter/material.dart';
import '../widgets/ChatListW.dart';
import '/widgets/FloatingBarW.dart';
import '/widgets/PromoBannerW.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ChatApp")),
      floatingActionButton: FloatingBarW(),
      body: Column(
        children: [
          PromoBannerW(),
          Expanded(
            // PromoBanner(),
            child: ChatListW(),
          ),
        ],
      ),
    );
  }
}
