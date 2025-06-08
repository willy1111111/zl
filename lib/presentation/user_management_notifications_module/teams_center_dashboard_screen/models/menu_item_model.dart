import 'package:get/get.dart';
import '../../../core/app_export.dart';

class MenuItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<bool>? hasInstallButton;

  MenuItemModel({
    this.icon,
    this.title,
    this.hasInstallButton,
  }) {
    hasInstallButton = hasInstallButton ?? false.obs;
  }
}
