import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SidebarNavigationItemModel {
  Rx<String>? iconPath;
  Rx<String>? label;
  Rx<bool>? isSelected;
  List<Color>? gradientColors;

  SidebarNavigationItemModel({
    this.iconPath,
    this.label,
    this.isSelected,
    this.gradientColors,
  });
}
