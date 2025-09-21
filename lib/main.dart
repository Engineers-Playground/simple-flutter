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
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarThemeData(backgroundColor: Colors.deepPurple),
      ),
    );
  }
}
