import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class SettingsMenuItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<String>? subtitle;
  Rx<double>? iconWidth;
  Rx<double>? iconHeight;
  Rx<bool>? showButton;
  Rx<String>? buttonText;

  SettingsMenuItemModel({
    this.icon,
    this.title,
    this.subtitle,
    this.iconWidth,
    this.iconHeight,
    this.showButton,
    this.buttonText,
  });
}
