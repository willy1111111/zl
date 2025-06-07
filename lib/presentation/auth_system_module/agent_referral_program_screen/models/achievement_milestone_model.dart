import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class AchievementMilestoneModel {
  Rx<String>? iconPath;
  Rx<double>? iconHeight;
  Rx<double>? iconWidth;
  Rx<String>? amount;
  Rx<String>? userCount;

  AchievementMilestoneModel({
    this.iconPath,
    this.iconHeight,
    this.iconWidth,
    this.amount,
    this.userCount,
  });
}
