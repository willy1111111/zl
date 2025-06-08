import 'package:get/get.dart';
import '../../../core/app_export.dart';

class ExperienceBonusGameModel {
  Rx<String>? backgroundImageOne;
  Rx<String>? backgroundImageTwo;
  Rx<String>? backgroundImageThree;
  Rx<String>? backgroundImageFour;
  Rx<String>? promotionalBannerImage;
  Rx<String>? exclusiveRewardsBannerImage;
  Rx<String>? gameGridBackgroundImage;
  Rx<String>? goButtonImage;
  Rx<String>? goButtonIcon;
  Rx<bool>? isGameActive;
  Rx<String>? rulesTitle;

  ExperienceBonusGameModel({
    this.backgroundImageOne,
    this.backgroundImageTwo,
    this.backgroundImageThree,
    this.backgroundImageFour,
    this.promotionalBannerImage,
    this.exclusiveRewardsBannerImage,
    this.gameGridBackgroundImage,
    this.goButtonImage,
    this.goButtonIcon,
    this.isGameActive,
    this.rulesTitle,
  });
}
