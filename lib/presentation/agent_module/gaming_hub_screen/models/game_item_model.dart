import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? imageUrl;
  Rx<String>? title;
  Rx<String>? platformIcon;
  Rx<String>? overlayImage;
  Color? platformColor;
  Color? backgroundColor;
  List<Color>? gradientColors;

  GameItemModel({
    this.imageUrl,
    this.title,
    this.platformIcon,
    this.overlayImage,
    this.platformColor,
    this.backgroundColor,
    this.gradientColors,
  });
}
