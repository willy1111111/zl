import 'package:get/get.dart';
import '../../../core/app_export.dart';

class BonusItemModel {
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<String>? amount;
  Rx<String>? subtitle;
  Rx<bool>? hasInfo;
  Rx<bool>? isRankingBonus;

  BonusItemModel({
    this.iconPath,
    this.title,
    this.amount,
    this.subtitle,
    this.hasInfo,
    this.isRankingBonus,
  });
}
