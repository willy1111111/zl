import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GoldenEggTicketCollectionModel {
  Rx<String>? balance;
  RxBool? showEventOverlay;
  RxInt? selectedSidebarIndex;
  RxString? remainingTime;
  RxDouble? progressPercentage;

  GoldenEggTicketCollectionModel({
    this.balance,
    this.showEventOverlay,
    this.selectedSidebarIndex,
    this.remainingTime,
    this.progressPercentage,
  });
}

class GameItemModel {
  Rx<String>? gameImage;
  Rx<String>? overlayIcon;
  Rx<String>? overlayImage;
  Rx<String>? title;
  Rx<String>? specialEffectImage;
  RxBool? hasSpecialEffect;
  RxBool? hasBadge;
  RxBool? hasProgressBar;
  RxBool? isPlaceholder;
  RxInt? badgeCount;

  GameItemModel({
    this.gameImage,
    this.overlayIcon,
    this.overlayImage,
    this.title,
    this.specialEffectImage,
    this.hasSpecialEffect,
    this.hasBadge,
    this.hasProgressBar,
    this.isPlaceholder,
    this.badgeCount,
  });
}

class GoldenEggModel {
  Rx<String>? baseImage;
  Rx<String>? eggImage;
  Rx<String>? contentImage;
  RxBool? isCollected;

  GoldenEggModel({
    this.baseImage,
    this.eggImage,
    this.contentImage,
    this.isCollected,
  });
}

class WinnerModel {
  Rx<String>? avatarPath;
  Rx<String>? username;
  Rx<String>? bonusAmount;

  WinnerModel({
    this.avatarPath,
    this.username,
    this.bonusAmount,
  });
}
