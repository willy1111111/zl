import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class MenuOptionItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<bool>? showInstallButton;
  Rx<bool>? showSpecialIcon;

  MenuOptionItemModel({
    this.icon,
    this.title,
    this.showInstallButton,
    this.showSpecialIcon,
  });
}
