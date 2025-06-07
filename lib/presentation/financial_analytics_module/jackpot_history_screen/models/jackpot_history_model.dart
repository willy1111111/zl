import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [JackpotHistoryScreen] screen with GetX.

class JackpotHistoryModel {
  Rx<String>? title;
  Rx<String>? jackpotAmount;
  Rx<String>? jackpotTitle;
  Rx<String>? dateFilter1;
  Rx<String>? dateFilter2;
  Rx<String>? progressMessage;
  Rx<bool>? isLoading;
  Rx<String>? leftIconPath;
  Rx<String>? rightIconPath;
  Rx<String>? decorativeImagePath;
  Rx<String>? progressIllustrationPath;

  JackpotHistoryModel({
    this.title,
    this.jackpotAmount,
    this.jackpotTitle,
    this.dateFilter1,
    this.dateFilter2,
    this.progressMessage,
    this.isLoading,
    this.leftIconPath,
    this.rightIconPath,
    this.decorativeImagePath,
    this.progressIllustrationPath,
  });
}
