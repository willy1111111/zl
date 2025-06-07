import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? imagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<Color>? backgroundColor;

  GameItemModel({
    this.imagePath,
    this.overlayImagePath,
    this.iconPath,
    this.title,
    this.backgroundColor,
  });
}
