import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/app_export.dart';

class CategoryNavItemModel {
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<bool>? isSelected;
  Rx<Color>? backgroundColor;

  CategoryNavItemModel({
    this.iconPath,
    this.title,
    this.isSelected,
    this.backgroundColor,
  });
}
