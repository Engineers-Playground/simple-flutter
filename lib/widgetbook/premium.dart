import 'package:flutter/material.dart';
import 'package:flutterchi/widgets/premium.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: Premium)
Widget build(BuildContext context) {
  return Premium(title: "Telegram Premium");
}

// @widgetbook.UseCase(name: 'Updated Stories', type: UserStatusInfo)
// Widget buildLongText(BuildContext context) {
//   return UserStatusInfo(
//     userName: context.knobs.string(label: "User name"),
//     storiesCount: 3,
//   );
// }
