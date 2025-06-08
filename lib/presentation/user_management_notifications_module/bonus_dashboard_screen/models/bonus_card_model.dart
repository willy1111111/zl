import 'package:get/get.dart';
import '../../../core/app_export.dart';

enum BonusCardType {
  spinBonus,
  signInBonus,
  depositBonus,
  inviteBonus,
  dailyRebateBonus,
  giftsCodeBonus,
  moneyRainBonus,
  vipBonus,
  cumulativeDepositBonus,
  ticketEventBonus,
  phoneVerificationBonus,
  simpleBonus,
}

class BonusCardModel {
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<String>? totalAmount;
  Rx<BonusCardType>? cardType;
  Map<String, String>? details;
  Rx<double>? progressPercentage;
  Rx<String>? progressText;
  Rx<String>? progressSubtext;
  Rx<String>? description;
  Rx<String>? actionButtonText;
  Rx<String>? secondaryButtonText;
  Rx<String>? timeRemaining;
  Rx<String>? activityTime;
  Rx<String>? timeInfo;
  List<DepositTypeModel>? depositTypes;
  List<InviteDetailModel>? inviteDetails;
  List<String>? socialIcons;
  List<RainDetailModel>? rainDetails;
  List<VipDetailModel>? vipDetails;
  List<TicketDetailModel>? ticketDetails;
  Rx<bool>? hasOverlayIcon;
  Rx<String>? overlayText;

  BonusCardModel({
    this.iconPath,
    this.title,
    this.totalAmount,
    this.cardType,
    this.details,
    this.progressPercentage,
    this.progressText,
    this.progressSubtext,
    this.description,
    this.actionButtonText,
    this.secondaryButtonText,
    this.timeRemaining,
    this.activityTime,
    this.timeInfo,
    this.depositTypes,
    this.inviteDetails,
    this.socialIcons,
    this.rainDetails,
    this.vipDetails,
    this.ticketDetails,
    this.hasOverlayIcon,
    this.overlayText,
  });
}

class DepositTypeModel {
  Rx<String>? name;
  Rx<String>? percentage;
  Rx<bool>? isHighlighted;

  DepositTypeModel({
    this.name,
    this.percentage,
    this.isHighlighted,
  }) {
    isHighlighted = isHighlighted ?? false.obs;
  }
}

class InviteDetailModel {
  Rx<String>? label;
  Rx<String>? amount;

  InviteDetailModel({
    this.label,
    this.amount,
  });
}

class RainDetailModel {
  Rx<String>? icon;
  Rx<String>? label;
  Rx<String>? amount;

  RainDetailModel({
    this.icon,
    this.label,
    this.amount,
  });
}

class VipDetailModel {
  Rx<String>? label;
  Rx<String>? amount;

  VipDetailModel({
    this.label,
    this.amount,
  });
}

class TicketDetailModel {
  Rx<String>? label;
  Rx<String>? amount;

  TicketDetailModel({
    this.label,
    this.amount,
  });
}
