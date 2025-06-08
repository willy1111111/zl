import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? imagePath;
  Rx<String>? text;
  Rx<Color>? backgroundColor;
  Rx<Color>? textColor;
  Rx<bool>? isRevealed;

  GameItemModel({
    this.imagePath,
    this.text,
    this.backgroundColor,
    this.textColor,
    this.isRevealed,
  });
}
