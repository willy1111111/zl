import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class RewardItemModel {
  Rx<String>? icon;
  Rx<String>? overlayIcon;
  Rx<String>? title;
  Rx<String>? amount;
  Rx<String>? claimed;

  RewardItemModel({
    this.icon,
    this.overlayIcon,
    this.title,
    this.amount,
    this.claimed,
  });
}
