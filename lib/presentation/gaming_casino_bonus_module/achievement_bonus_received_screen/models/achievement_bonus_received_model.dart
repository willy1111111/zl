import 'package:get/get.dart';
import '../../../core/app_export.dart';

class AchievementBonusReceivedModel {
  Rx<String>? balanceAmount;
  Rx<String>? countdownText;
  Rx<String>? progressText;
  Rx<String>? missionsText;
  Rx<bool>? showSuccessDialog;

  AchievementBonusReceivedModel({
    this.balanceAmount,
    this.countdownText,
    this.progressText,
    this.missionsText,
    this.showSuccessDialog,
  });
}
