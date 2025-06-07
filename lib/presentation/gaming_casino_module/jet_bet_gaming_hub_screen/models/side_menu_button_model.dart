import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

/// This class is used for side menu button items in the [JetBetGamingHubScreen] screen with GetX.

class SideMenuButtonModel {
  Rx<String>? icon;
  Rx<String>? label;
  Rx<bool>? isActive = false.obs;

  SideMenuButtonModel({
    this.icon,
    this.label,
    this.isActive,
  });
}
