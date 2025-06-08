import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SpinBonusLeaderboardModel {
  Rx<String>? title;
  Rx<String>? crownIcon;
  Rx<String>? leftLaurel;
  Rx<String>? rightLaurel;

  SpinBonusLeaderboardModel({
    this.title,
    this.crownIcon,
    this.leftLaurel,
    this.rightLaurel,
  });
}
