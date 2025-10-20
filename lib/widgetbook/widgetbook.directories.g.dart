// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutterchi/widgetbook/action_option.dart'
    as _flutterchi_widgetbook_action_option;
import 'package:flutterchi/widgetbook/header.dart'
    as _flutterchi_widgetbook_header;
import 'package:flutterchi/widgetbook/options_list.dart'
    as _flutterchi_widgetbook_options_list;
import 'package:flutterchi/widgetbook/page.dart' as _flutterchi_widgetbook_page;
import 'package:flutterchi/widgetbook/premium.dart'
    as _flutterchi_widgetbook_premium;
import 'package:flutterchi/widgetbook/settings_option.dart'
    as _flutterchi_widgetbook_settings_option;
import 'package:flutterchi/widgetbook/stories_preview.dart'
    as _flutterchi_widgetbook_stories_preview;
import 'package:flutterchi/widgetbook/user_info.dart'
    as _flutterchi_widgetbook_user_info;
import 'package:flutterchi/widgetbook/user_status_info.dart'
    as _flutterchi_widgetbook_user_status_info;
import 'package:flutterchi/widgets/ava.dart' as _flutterchi_widgets_ava;
import 'package:flutterchi/widgets/cool_button.dart'
    as _flutterchi_widgets_cool_button;
import 'package:widgetbook/widgetbook.dart' as _widgetbook;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookFolder(
    name: 'widgets',
    children: [
      _widgetbook.WidgetbookComponent(
        name: 'ActionOption',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder: _flutterchi_widgetbook_action_option.build,
          )
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'Ava',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'No stories',
            builder: _flutterchi_widgets_ava.noStories,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'With stories',
            builder: _flutterchi_widgets_ava.withStories,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'withStatus',
            builder: _flutterchi_widgets_ava.withStatus,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'CustomButton',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Disabled',
            builder: _flutterchi_widgets_cool_button.disabledButton,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'Enabled',
            builder: _flutterchi_widgets_cool_button.enabledButton,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'Header',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder: _flutterchi_widgetbook_header.build,
          )
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'OptionsList',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Setting Options',
            builder: _flutterchi_widgetbook_options_list.buildLongText,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'User Info',
            builder: _flutterchi_widgetbook_options_list.build,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'Premium',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder: _flutterchi_widgetbook_premium.build,
          )
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'SettingsOption',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder: _flutterchi_widgetbook_settings_option.build,
          )
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'SettingsPage',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'User Info',
            builder: _flutterchi_widgetbook_page.build,
          )
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'StoriesPreview',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder: _flutterchi_widgetbook_stories_preview.build,
          )
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'UserInfo',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder: _flutterchi_widgetbook_user_info.build,
          )
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'UserStatusInfo',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder: _flutterchi_widgetbook_user_status_info.build,
          )
        ],
      ),
    ],
  )
];
