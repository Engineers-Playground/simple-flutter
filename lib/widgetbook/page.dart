import 'package:flutter/material.dart';
import 'package:flutterchi/widgets/page.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'User Info', type: SettingsPage)
Widget build(BuildContext context) {
  return SettingsPage();
}
