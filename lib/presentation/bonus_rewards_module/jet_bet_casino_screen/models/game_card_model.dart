import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class GameCardModel {
  Rx<String>? imagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? title;
  Rx<String>? gameId;
  Rx<Color>? backgroundColor;

  GameCardModel({
    this.imagePath,
    this.overlayImagePath,
    this.title,
    this.gameId,
    this.backgroundColor,
  });
}
