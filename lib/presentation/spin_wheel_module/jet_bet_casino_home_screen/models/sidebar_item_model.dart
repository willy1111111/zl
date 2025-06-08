import 'package:get/get.dart';

import '../../../core/app_export.dart';

class SidebarItemModel {
  Rx<String>? iconPath;
  Rx<String>? title;

  SidebarItemModel({
    this.iconPath,
    this.title,
  });
}
