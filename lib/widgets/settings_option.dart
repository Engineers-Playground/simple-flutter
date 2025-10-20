import 'package:flutter/material.dart';
import 'package:flutterchi/constants.dart';

class SettingsOption extends StatelessWidget {
  const SettingsOption({
    super.key,
    required this.option,
    required this.top,
    required this.end,
    this.onTap,
    this.icon_color,
  });

  final Map option;
  final bool top;
  final bool end;
  final Function? onTap;
  final Color? icon_color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        padding: EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 12),
        // margin: EdgeInsets.all(2),
        // width: 344,
        decoration: BoxDecoration(
          borderRadius: !top && !end
              ? BorderRadius.all(Radius.circular(0))
              : (top
                  ? BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )
                  : BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
          color: consts.colors.dominant.bgMediumContrast,
        ),
        margin: EdgeInsets.only(bottom: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 16,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(option["icon"], color: icon_color, size: 24),
                Text(
                  option["title"],
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
            option.containsKey("default_value")
                ? Text(
                    option["default_value"],
                    style: TextStyle(color: Colors.blueAccent),
                  )
                : Padding(padding: EdgeInsets.all(0)),
          ],
        ),
      ),
    );
  }
}
