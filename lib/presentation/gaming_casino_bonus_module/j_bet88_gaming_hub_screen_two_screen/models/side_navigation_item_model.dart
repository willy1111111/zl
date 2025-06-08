import 'package:get/get.dart';

import '../../../core/app_export.dart';

class SideNavigationItemModel {
  Rx<String>? icon;
  Rx<String>? title;

  SideNavigationItemModel({
    this.icon,
    this.title,
  });
}
