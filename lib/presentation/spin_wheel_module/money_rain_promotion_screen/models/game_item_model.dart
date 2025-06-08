import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GameItemModel {
  Rx<String>? imagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? badgeImagePath;
  Rx<String>? title;
  Rx<bool>? hasOverlay;
  Rx<bool>? isCustom;
  Rx<Color>? backgroundColor;
  Rx<bool>? hasNotificationBadge;
  Rx<String>? notificationCount;

  GameItemModel({
    this.imagePath,
    this.overlayImagePath,
    this.badgeImagePath,
    this.title,
    this.hasOverlay,
    this.isCustom,
    this.backgroundColor,
    this.hasNotificationBadge,
    this.notificationCount,
  });
}
