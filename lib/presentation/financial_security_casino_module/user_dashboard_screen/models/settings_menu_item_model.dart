import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SettingsMenuItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<bool>? hasButton;

  SettingsMenuItemModel({
    this.icon,
    this.title,
    this.hasButton,
  });
}
