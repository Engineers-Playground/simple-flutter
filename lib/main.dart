import 'package:flutter/material.dart';
import 'ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Simple UI in Flutter";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      // home: Scaffold(
      //   appBar: AppBar(title: const Text(title)),
      //   body: const Padding(
      //     padding: EdgeInsets.all(10),
      //     child: Column(
      //       children: [
      //         Column(
      //           children: [
      //             ImageNetwork.dart(
      //               alt: "network owl image",
      //               img:
      //                   "https://media.istockphoto.com/id/1726264350/de/foto/vogelbeobachtung-von-waldohreulen-von-einem-kiefernzweig-in-einem-geheimnisvollen-wald-aus.webp?s=1024x1024&w=is&k=20&c=yCJn99tlasrzQ2HjP5HwQa7AR8kt7cx_jde16gs_eLo=",
      //             ),
      //             TitleSection.dart(
      //               topic: "Owl Photo",
      //               description: "Taken in the US forest",
      //             ),
      //             TitleSection.dart(topic: "Date", description: "2025-09-15"),
      //           ],
      //         ),
      //         Column(
      //           children: [
      //             ImageSection(image: 'images/forest.jpeg'),
      //             TitleSection.dart(
      //               topic: "Forest Photo",
      //               description: "Taken in the Russian forest",
      //             ),
      //             TitleSection.dart(topic: "Date", description: "2025-08-15"),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
