import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SettingsItemModel {
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<bool>? showArrow;
  Rx<bool>? showInstallButton;

  SettingsItemModel({
    this.iconPath,
    this.title,
    this.showArrow,
    this.showInstallButton,
  });
}
