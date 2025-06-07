import 'package:flutter/material.dart';
import '../../../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? imagePath;
  Rx<String>? title;
  Rx<String>? overlayImage;
  Rx<String>? iconImage;
  Rx<bool>? hasNotification;
  Rx<int>? notificationCount;
  Rx<Color>? backgroundColor;

  GameItemModel({
    String? imagePath,
    String? title,
    String? overlayImage,
    String? iconImage,
    bool? hasNotification,
    int? notificationCount,
    Color? backgroundColor,
  }) {
    this.imagePath = (imagePath ?? '').obs;
    this.title = (title ?? '').obs;
    this.overlayImage = (overlayImage ?? '').obs;
    this.iconImage = (iconImage ?? '').obs;
    this.hasNotification = (hasNotification ?? false).obs;
    this.notificationCount = (notificationCount ?? 0).obs;
    this.backgroundColor = (backgroundColor ?? appTheme.transparentCustom).obs;
  }
}
