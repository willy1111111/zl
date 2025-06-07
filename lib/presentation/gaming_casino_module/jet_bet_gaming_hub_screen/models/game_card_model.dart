import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../core/app_export.dart';

/// This class is used for game card items in the [JetBetGamingHubScreen] screen with GetX.

class GameCardModel {
  Rx<String>? gameImage;
  Rx<String>? gameName;
  Rx<String>? overlayImage;
  Rx<String>? platformIcon;
  Rx<Color>? platformBg;
  Rx<bool>? isCustomBackground = false.obs;
  Rx<bool>? isGradientPlatform = false.obs;
  Rx<bool>? isJdbGradient = false.obs;
  Rx<bool>? isPgGradient = false.obs;

  GameCardModel({
    this.gameImage,
    this.gameName,
    this.overlayImage,
    this.platformIcon,
    this.platformBg,
    this.isCustomBackground,
    this.isGradientPlatform,
    this.isJdbGradient,
    this.isPgGradient,
  });
}
