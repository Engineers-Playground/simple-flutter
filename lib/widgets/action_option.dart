import 'package:flutter/material.dart';
import 'package:flutterchi/constants.dart';

class ActionOption extends StatelessWidget {
  const ActionOption({
    super.key,
    required this.option,
    this.color = Colors.blueAccent,
  });
  final Map option;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: consts.colors.dominant.bgMediumContrast,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(option["title"], style: TextStyle(color: color, fontSize: 15)),
          Icon(option["icon"], color: color, size: 24),
        ],
      ),
    );
  }
}
