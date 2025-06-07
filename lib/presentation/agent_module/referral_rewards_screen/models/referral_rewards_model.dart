import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class ReferralRewardsModel {
  Rx<String>? logoImagePath;
  Rx<String>? backgroundImagePath;
  Rx<String>? gamingCharactersImagePath;
  Rx<String>? mainHeading;
  Rx<String>? groupIconPath;
  Rx<String>? staticDomainText;

  ReferralRewardsModel({
    this.logoImagePath,
    this.backgroundImagePath,
    this.gamingCharactersImagePath,
    this.mainHeading,
    this.groupIconPath,
    this.staticDomainText,
  });
}
