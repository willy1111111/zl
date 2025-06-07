import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class SidebarMenuItemModel {
  Rx<String>? imagePath;
  Rx<String>? title;
  Rx<bool>? isActive;

  SidebarMenuItemModel({
    String? imagePath,
    String? title,
    bool? isActive,
  }) {
    this.imagePath = (imagePath ?? '').obs;
    this.title = (title ?? '').obs;
    this.isActive = (isActive ?? false).obs;
  }
}
