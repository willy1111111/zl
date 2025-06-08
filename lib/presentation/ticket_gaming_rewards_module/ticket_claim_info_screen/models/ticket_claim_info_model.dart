import 'package:get/get.dart';

import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class TicketClaimInfoGameItemModel {
  Rx<String>? gameImagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? baccaratImagePath;
  Rx<String>? specialEffectImagePath;
  Rx<String>? title;
  Rx<GameType>? gameType;
  Rx<Color>? backgroundColor;
  Rx<int>? badgeCount;

  TicketClaimInfoGameItemModel({
    this.gameImagePath,
    this.overlayImagePath,
    this.baccaratImagePath,
    this.specialEffectImagePath,
    this.title,
    this.gameType,
    this.backgroundColor,
    this.badgeCount,
  });
}

enum GameType {
  basic,
  withSpecialEffect,
  logoStyle,
  withBaccarat,
  withBadge,
  withProgressBar,
  withRedDot,
}
