import 'package:flutter/material.dart';
import 'package:flutterchi/widgets/settings_option.dart';
import 'package:flutterchi/widgets/user_info.dart';

class OptionsList extends StatelessWidget {
  const OptionsList({
    super.key,
    required this.list,
    this.icon_color = Colors.grey,
  });

  final List<Map> list;
  final Color icon_color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, index) {
          if (list[index]["info"] != null) {
            return index == 0
                ? UserInfo(info: list[index], top: true, end: false)
                : index == list.length - 1
                    ? UserInfo(info: list[index], top: false, end: true)
                    : UserInfo(info: list[index], top: false, end: false);
          } else {
            return index == 0
                ? SettingsOption(
                    option: list[index],
                    top: true,
                    end: false,
                    onTap: () {
                      if (list[index]["title"] == "Язык") {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  topLeft: Radius.circular(16),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("russian"),
                                  Text("english"),
                                  Text("uzbek"),
                                ],
                              ),
                            );
                          },
                        );
                      }
                    },
                    icon_color: icon_color,
                  )
                : index == list.length - 1
                    ? SettingsOption(
                        option: list[index],
                        top: false,
                        end: true,
                        onTap: () {
                          if (list[index]["title"] == "Язык") {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("russian"),
                                      Text("english"),
                                      Text("uzbek"),
                                    ],
                                  ),
                                );
                              },
                            );
                          }
                        },
                        icon_color: icon_color,
                      )
                    : SettingsOption(
                        option: list[index],
                        top: false,
                        end: false,
                        onTap: () {
                          if (list[index]["title"] == "Язык") {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("russian"),
                                      Text("english"),
                                      Text("uzbek"),
                                    ],
                                  ),
                                );
                              },
                            );
                          }
                        },
                        icon_color: icon_color,
                      );
          }
        },
      ),
    );
  }
}
