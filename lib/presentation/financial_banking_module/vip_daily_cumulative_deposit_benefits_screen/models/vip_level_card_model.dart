import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class VipLevelCardModel {
  Rx<String>? vipLevel;
  Rx<String>? backgroundImage;
  Rx<String>? vipIcon;
  Rx<String>? maxAmount;
  RxList<Map<String, String>>? depositRewards;
  Rx<bool>? hasSpecialBadge;
  Rx<Color>? specialBadgeColor;
  Rx<bool>? isFullWidth;

  VipLevelCardModel({
    this.vipLevel,
    this.backgroundImage,
    this.vipIcon,
    this.maxAmount,
    this.depositRewards,
    this.hasSpecialBadge,
    this.specialBadgeColor,
    this.isFullWidth,
  }) {
    vipLevel = vipLevel ?? ''.obs;
    backgroundImage = backgroundImage ?? ''.obs;
    vipIcon = vipIcon ?? ''.obs;
    maxAmount = maxAmount ?? ''.obs;
    depositRewards = depositRewards ?? <Map<String, String>>[].obs;
    hasSpecialBadge = hasSpecialBadge ?? false.obs;
    specialBadgeColor = specialBadgeColor ?? appTheme.transparentCustom.obs;
    isFullWidth = isFullWidth ?? false.obs;
  }
}
