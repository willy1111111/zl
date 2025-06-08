import 'package:get/get.dart';
import '../../../../core/app_export.dart';

enum GameType {
  basic,
  special,
  placeholder,
  overlay,
  withBadge,
  withProgress,
  withRedDot
}

class GameItemModel {
  Rx<String>? gameImage;
  Rx<String>? overlayImage;
  Rx<String>? overlayIcon;
  Rx<String>? specialEffect;
  Rx<String>? logoImage;
  Rx<String>? title;
  Rx<GameType>? gameType;
  Rx<int>? badgeCount;

  GameItemModel({
    this.gameImage,
    this.overlayImage,
    this.overlayIcon,
    this.specialEffect,
    this.logoImage,
    this.title,
    this.gameType,
    this.badgeCount,
  });
}
