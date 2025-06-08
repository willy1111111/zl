import 'package:get/get.dart';
import '../../../core/app_export.dart';

class MenuOptionItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<bool>? hasInstallButton;

  MenuOptionItemModel({
    this.icon,
    this.title,
    this.hasInstallButton,
  });
}
