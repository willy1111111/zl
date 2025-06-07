import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class IncomeCategoryModel {
  Rx<String>? iconPath;
  Rx<Color>? backgroundColor;
  Rx<String>? title;
  Rx<String>? amount;
  Rx<String>? subtitle;
  Rx<bool>? showSubtitle;

  IncomeCategoryModel({
    this.iconPath,
    this.backgroundColor,
    this.title,
    this.amount,
    this.subtitle,
    this.showSubtitle,
  });
}
