import 'package:flutter/material.dart';
import 'dart:developer';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  ResponsiveLayout({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        log('constraints:', error: constraints);
        log('constraints.maxwidth', error: constraints.maxWidth);
        return constraints.maxWidth < 600 ? mobileBody : desktopBody;
      },
    );
  }
}
