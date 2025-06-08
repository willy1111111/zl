import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GamingCasinoVipRewardsScreenTwoModel {
  Rx<String>? balanceAmount;
  Rx<bool>? showVipModal;
  Rx<String>? rewardAmount;
  Rx<String>? timeLeft;

  GamingCasinoVipRewardsScreenTwoModel({
    this.balanceAmount,
    this.showVipModal,
    this.rewardAmount,
    this.timeLeft,
  });
}

class GameItemModel {
  Rx<String>? imagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? playIconPath;
  Rx<String>? title;
  Rx<bool>? hasNotification;
  Rx<int>? notificationCount;
  Rx<bool>? isCustomBackground;

  GameItemModel({
    this.imagePath,
    this.overlayImagePath,
    this.playIconPath,
    this.title,
    this.hasNotification,
    this.notificationCount,
    this.isCustomBackground,
  });
}

class CategoryItemModel {
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<bool>? isSelected;

  CategoryItemModel({
    this.iconPath,
    this.title,
    this.isSelected,
  });
}
