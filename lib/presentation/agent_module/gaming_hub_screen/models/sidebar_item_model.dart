import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class SidebarItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<bool>? isActive;
  List<Color>? gradientColors;

  SidebarItemModel({
    this.icon,
    this.title,
    this.isActive,
    this.gradientColors,
  });
}
