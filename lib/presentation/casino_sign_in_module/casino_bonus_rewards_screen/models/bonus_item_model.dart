import 'package:get/get.dart';
import '../../../../../core/app_export.dart';
import '../widgets/bonus_item_widget.dart';

/// This class is used in the [BonusItemWidget] component with GetX.

class BonusItemModel {
  Rx<String>? title;
  Rx<String>? subtitle;
  Rx<String>? amount;
  Rx<String>? iconPath;
  Rx<bool>? isClaimable;
  Rx<bool>? hasVipElements;
  Rx<String>? vipBackgroundPath;
  Rx<String>? vipBadgePath;
  Rx<String>? vipCrownPath;

  BonusItemModel({
    this.title,
    this.subtitle,
    this.amount,
    this.iconPath,
    this.isClaimable,
    this.hasVipElements,
    this.vipBackgroundPath,
    this.vipBadgePath,
    this.vipCrownPath,
  });
}
