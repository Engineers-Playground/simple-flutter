import 'package:flutter/material.dart';
import 'package:flutterchi/constants.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.info,
    required this.top,
    required this.end,
  });

  final Map info;
  final bool top;
  final bool end;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 360,
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
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  info["info"],
                ),
                info["title"] != ""
                    ? Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                        info["title"],
                      )
                    : Padding(padding: EdgeInsets.all(0)),
              ],
            ),
          ),
          info["icon"] != ""
              ? Icon(info["icon"], color: Colors.white, size: 24)
              : Padding(padding: EdgeInsets.all(1)),
        ],
      ),
    );
  }
}
