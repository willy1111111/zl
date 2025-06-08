import 'package:get/get.dart';
import '../../../core/app_export.dart';

class BonusCenterModel {
  Rx<String>? totalAmount;
  Rx<String>? bonusClaimedText;

  BonusCenterModel({
    this.totalAmount,
    this.bonusClaimedText,
  });
}

class BonusSectionModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<String>? totalAmount;
  Rx<String>? description;
  Rx<String>? buttonText;
  Rx<String>? buttonAction;
  Rx<String>? eventText;
  Rx<String>? timeText;
  Rx<String>? activityTime;
  Rx<String>? withdrawalText;
  Rx<String>? progressText;
  Rx<double>? progressValue;
  Rx<bool>? isCompact;
  Rx<bool>? hasProgressBar;
  Rx<bool>? hasSignInButton;
  Rx<bool>? hasSocialIcons;
  Rx<bool>? hasMoneyRainLayout;
  Rx<bool>? hasComplexIcon;
  RxList<BonusDetailModel>? details;

  BonusSectionModel({
    this.icon,
    this.title,
    this.totalAmount,
    this.description,
    this.buttonText,
    this.buttonAction,
    this.eventText,
    this.timeText,
    this.activityTime,
    this.withdrawalText,
    this.progressText,
    this.progressValue,
    this.isCompact,
    this.hasProgressBar,
    this.hasSignInButton,
    this.hasSocialIcons,
    this.hasMoneyRainLayout,
    this.hasComplexIcon,
    this.details,
  });
}

class BonusDetailModel {
  Rx<String>? label;
  Rx<String>? amount;
  Rx<bool>? isHighlighted;

  BonusDetailModel({
    this.label,
    this.amount,
    this.isHighlighted,
  });
}
