import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:flutterchi/ui/components/ImageSection.dart';
import 'package:flutterchi/ui/components/TitleSection.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    log('context in mobileView is - ', error: context);
    return Scaffold(
      backgroundColor: Colors.purple[300],
      appBar: AppBar(title: Text('Youtube Desktop Layout')),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4 / 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.purple[100],
                      child: Text("i am youtube vide"),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.grey[200],
                          height: 120,
                          child: Text("i am comment"),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      color: Colors.grey[200],
                      child: Text("i am video recommendations"),
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
