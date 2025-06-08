import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameCardModel {
  Rx<String>? gameImage;
  Rx<String>? overlayIcon;
  Rx<String>? overlayImage;
  Rx<String>? title;
  Rx<bool>? isRounded;
  Rx<Color>? backgroundColor;

  GameCardModel({
    this.gameImage,
    this.overlayIcon,
    this.overlayImage,
    this.title,
    this.isRounded,
    this.backgroundColor,
  });
}
