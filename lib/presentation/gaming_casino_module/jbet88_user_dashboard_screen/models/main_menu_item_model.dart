import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class MainMenuItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<String>? subtitle;
  Rx<String>? highlightText;

  MainMenuItemModel({
    this.icon,
    this.title,
    this.subtitle,
    this.highlightText,
  });
}
