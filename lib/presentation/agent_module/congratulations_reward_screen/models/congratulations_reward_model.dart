import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class CongratulationsRewardModel {
  Rx<String>? countdownText;
  Rx<String>? progressText;
  Rx<String>? congratulationsAmount;
  Rx<String>? congratulationsMessage;

  CongratulationsRewardModel({
    this.countdownText,
    this.progressText,
    this.congratulationsAmount,
    this.congratulationsMessage,
  });
}
