import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class IncomeItemModel {
  Rx<String>? iconPath;
  Rx<Color>? iconBackgroundColor;
  Rx<String>? title;
  Rx<String>? subtitle;
  Rx<String>? amount;
  Rx<bool>? showArrow;
  Rx<double>? separatorWidth;
  Rx<double>? separatorLeftMargin;

  IncomeItemModel({
    this.iconPath,
    this.iconBackgroundColor,
    this.title,
    this.subtitle,
    this.amount,
    this.showArrow,
    this.separatorWidth,
    this.separatorLeftMargin,
  });
}
