import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class SideNavigationItemModel {
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<bool>? isSelected;
  Rx<Gradient>? backgroundColor;

  SideNavigationItemModel({
    this.iconPath,
    this.title,
    this.isSelected,
    this.backgroundColor,
  });
}
