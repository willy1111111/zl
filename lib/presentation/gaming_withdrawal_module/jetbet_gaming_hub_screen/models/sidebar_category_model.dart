import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SidebarCategoryModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<bool>? isSelected;
  Rx<Color>? backgroundColor;
  Rx<Color>? textColor;

  SidebarCategoryModel({
    this.icon,
    this.title,
    this.isSelected,
    this.backgroundColor,
    this.textColor,
  });
}
