import 'package:flutter/material.dart';
import 'package:flutterchi/widgets/header.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: Header)
Widget build(BuildContext context) {
  return Header(image: "assets/userpic.png");
}
