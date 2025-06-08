import 'package:get/get.dart';

import '../../../core/app_export.dart';

class SidebarMenuItemModel {
  Rx<String>? iconPath;
  Rx<String>? title;

  SidebarMenuItemModel({
    this.iconPath,
    this.title,
  });
}
