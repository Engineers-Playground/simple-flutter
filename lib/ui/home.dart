import 'package:flutter/material.dart';
import 'package:flutterchi/ui/desktopView.dart';
import 'package:flutterchi/ui/mobileView.dart';
import 'package:flutterchi/ui/responsive.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileView(),
        desktopBody: DesktopView(),
      ),
    );
  }
}
