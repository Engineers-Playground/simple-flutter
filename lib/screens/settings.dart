import 'package:flutter/material.dart';
import 'package:flutterchi/constants.dart';
import 'package:flutterchi/widgets/action_option.dart';
import 'package:flutterchi/widgets/header.dart';
import 'package:flutterchi/widgets/options_list.dart';
import 'package:flutterchi/widgets/premium.dart';
import 'package:flutterchi/widgets/user_status_info.dart';

class SettingsScreen extends StatelessWidget {
  // const SettingsScreen({super.key});

  var user_info = [
    {
      "title": "Нажмите, чтобы изменить номер телефона",
      "info": "+7 (911) 234-56-78",
      "icon": "",
    },
    {
      "title": "Имя пользователя",
      "info": "@s_pokrovitel",
      "icon": Icons.qr_code,
    },
    {
      "info": "Всё полезно, что на макет влезло.",
      "title": "О себе",
      "icon": "",
    },
  ];

  var option_list = [
    {
      "title": "Избранное",
      "icon": Icons.saved_search_outlined,
      "type": "personal",
    },
    {"title": "Сменить статус", "icon": Icons.emoji_emotions},
    {"title": "Кошелёк", "icon": Icons.wallet},
    {"title": "Звонки и контакты", "icon": Icons.phone},
  ];

  var settings_list = [
    {"title": "Настройки чатов", "icon": Icons.chat},
    {"title": "Конфиденциальность", "icon": Icons.security_outlined},
    {"title": "Уведомления и звуки", "icon": Icons.doorbell_outlined},
    {"title": "Данные и память", "icon": Icons.storage_outlined},
    {"title": "Энергосбережение", "icon": Icons.energy_savings_leaf_outlined},
    {"title": "Папки с чатами", "icon": Icons.folder},
    {"title": "Устройства", "icon": Icons.devices_other},
    {"title": "Язык", "icon": Icons.search, "default_value": "Русский"},
  ];

  var help_list = [
    {"title": "Задать вопрос", "icon": Icons.chat},
    {"title": "Вопросы о Telegram", "icon": Icons.question_answer},
    {
      "title": "Политика конфиденциальности",
      "icon": Icons.document_scanner_outlined,
    },
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: consts.colors.dominant.bgHighContrast,
        appBar: AppBar(
          title: const Text("Telegram Settings Page"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(image: "assets/userpic.png"),
              Padding(padding: EdgeInsets.only(bottom: 16)),
              Container(
                margin: EdgeInsets.only(right: 16, left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    UserStatusInfo(
                        userName: "Виталий Яковлев", storiesCount: 3),
                    OptionsList(list: user_info),
                    ActionOption(
                      option: {
                        "title": "Добавить аккаунт",
                        "icon": Icons.account_circle_outlined,
                      },
                    ),
                    OptionsList(list: option_list, icon_color: Colors.blue),
                    Premium(title: "Telegram Premium"),
                    Text(
                      "Настройки",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    OptionsList(list: settings_list),
                    Text(
                      "Помощь",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    OptionsList(list: help_list),
                    ActionOption(
                      option: {"title": "Выход", "icon": Icons.exit_to_app},
                      color: Colors.red,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                      "Telegram для Android v10.1.3 (3944) store bundled  by Vitaly Yakovlev :)",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
