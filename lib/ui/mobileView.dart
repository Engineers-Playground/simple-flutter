import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:flutterchi/ui/components/ImageSection.dart';
import 'package:flutterchi/ui/components/TitleSection.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    log('context in mobileView is - ', error: context);
    return Scaffold(
      backgroundColor: Colors.purple[300],
      appBar: AppBar(title: Text('Basic Mobile Layout')),
      body: Column(
        children: [
          // youtube video
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: Colors.purple[100]),
            ),
          ),

          // comment section & video list
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.grey[300], height: 120),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
