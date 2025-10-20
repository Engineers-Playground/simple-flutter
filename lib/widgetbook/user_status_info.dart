import 'package:flutter/material.dart';
import 'package:flutterchi/widgets/user_status_info.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: UserStatusInfo)
Widget build(BuildContext context) {
  return UserStatusInfo(
    userName: context.knobs.string(
      label: "Full Name",
      initialValue: "Initial Full Name",
    ),
    storiesCount: 3,
  );
}

// @widgetbook.UseCase(name: 'Updated Stories', type: UserStatusInfo)
// Widget buildLongText(BuildContext context) {
//   return UserStatusInfo(
//     userName: context.knobs.string(label: "User name"),
//     storiesCount: 3,
//   );
// }
