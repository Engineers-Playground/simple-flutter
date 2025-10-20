import 'package:flutter/material.dart';
import 'package:flutterchi/widgets/options_list.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'User Info', type: OptionsList)
Widget build(BuildContext context) {
  var list = [
    {"title": "Phone", "info": "+124332434", "icon": ""},
    {"title": "Username", "info": "+@asdfdsfd", "icon": Icons.qr_code},
  ];
  return OptionsList(list: list);
}

@widgetbook.UseCase(name: 'Setting Options', type: OptionsList)
Widget buildLongText(BuildContext context) {
  var list = [
    {"title": "Bio", "icon": Icons.add},
    {"title": "Bio", "icon": Icons.save},
    {"title": "Bio", "icon": Icons.room_preferences},
  ];
  return OptionsList(list: list);
}
