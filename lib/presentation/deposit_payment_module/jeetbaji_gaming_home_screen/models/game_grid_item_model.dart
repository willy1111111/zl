import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameGridItemModel {
  Rx<String>? title;
  Rx<String>? subtitle;
  Rx<String>? badge;
  Rx<List<Color>>? gradientColors;
  Rx<Color>? badgeColor;

  GameGridItemModel({
    this.title,
    this.subtitle,
    this.badge,
    this.gradientColors,
    this.badgeColor,
  });
}
