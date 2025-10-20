import 'package:flutter/material.dart';
import 'package:flutterchi/widgets/user_info.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: UserInfo)
Widget build(BuildContext context) {
  var info1 = {
    "title": "Нажмите, чтобы изменить номер телефона",
    "info": "+7 (911) 234-56-78",
    "icon": "",
  };
  var info2 = {
    "title": "Имя пользователя",
    "info": "@s_pokrovitel",
    "icon": Icons.qr_code_2,
  };
  return UserInfo(
    info: context.knobs.list(label: "Info", options: [info1, info2]),
    top: context.knobs.boolean(label: "top", initialValue: false),
    end: context.knobs.boolean(label: "end", initialValue: false),
  );
}

// @widgetbook.UseCase(name: 'Updated Stories', type: UserStatusInfo)
// Widget buildLongText(BuildContext context) {
//   return UserStatusInfo(
//     userName: context.knobs.string(label: "User name"),
//     storiesCount: 3,
//   );
// }
