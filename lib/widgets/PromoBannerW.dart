import 'dart:ffi';

import 'package:flutter/material.dart';

class PromoBannerW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return Container(
    //   // decoration: BoxDecoration(image: Image(image: Image.asset("name"))),
    //   padding: const EdgeInsets.all(10.0),
    //   width: double.infinity,
    //   child: Expanded(
    //     child: Row(
    //       children: [
    //         Expanded(
    //           flex: 4,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text("YOUR GIFT IS RESERVED FOR:"),
    //               Text(
    //                 "09:59",
    //                 style: TextStyle(
    //                   fontSize: 20.0,
    //                   color: Colors.black,
    //                   fontWeight: FontWeight.bold,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Expanded(
    //           flex: 1,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.end,
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {},
    //                 child: Row(
    //                   children: [Text("Get"), Icon(Icons.chevron_right)],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          width: double.infinity,
          height: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.network(
              "https://picsum.photos/250?image=9",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          // alignment: Alignment.bottomCenter,
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter,
          //     colors: <Color>[
          //       Colors.black.withAlpha(0),
          //       Colors.black12,
          //       Colors.black45,
          //     ],
          //   ),
          // ),
          child: const Text(
            'Foreground Text',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ],
    );
  }
}
