import 'package:flutter/material.dart';
import 'package:flutterchi/widgets/action_option.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: ActionOption)
Widget build(BuildContext context) {
  return ActionOption(
    option: {
      "title": "Добавить аккаунт",
      "icon": Icons.account_circle_outlined,
      "color": Colors.red,
    },
  );
}
