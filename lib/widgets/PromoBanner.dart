import 'dart:ffi';

import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // decoration: BoxDecoration(image: Image(image: Image.asset("name"))),
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      child: Expanded(
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("YOUR GIFT IS RESERVED FOR:"),
                  Text(
                    "09:59",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [Text("Get"), Icon(Icons.chevron_right)],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
