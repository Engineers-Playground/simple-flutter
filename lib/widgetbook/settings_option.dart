import 'package:flutter/material.dart';
import 'package:flutterchi/widgets/settings_option.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: SettingsOption)
Widget build(BuildContext context) {
  var option = {"title": "номер телефона", "icon": Icons.qr_code_2};
  return SettingsOption(
    option: option,
    top: context.knobs.boolean(label: "top", initialValue: false),
    end: context.knobs.boolean(label: "end", initialValue: false),

    // option: context.knobs.list(label: "Option", options: [option]),
  );
}

// @widgetbook.UseCase(name: 'Updated Stories', type: UserStatusInfo)
// Widget buildLongText(BuildContext context) {
//   return UserStatusInfo(
//     userName: context.knobs.string(label: "User name"),
//     storiesCount: 3,
//   );
// }
