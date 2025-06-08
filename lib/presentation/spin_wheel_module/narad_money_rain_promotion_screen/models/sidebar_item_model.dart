import 'package:get/get.dart';

import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class SidebarItemModel {
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<bool>? isActive;
  Rx<Color>? backgroundColor;

  SidebarItemModel({
    this.iconPath,
    this.title,
    this.isActive,
    this.backgroundColor,
  });
}
