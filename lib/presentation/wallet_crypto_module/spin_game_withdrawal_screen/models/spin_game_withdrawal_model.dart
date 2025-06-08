import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SpinGameWithdrawalModel {
  Rx<String>? progressPercentage;
  Rx<String>? withdrawalAmount;
  Rx<String>? progressText;
  Rx<String>? inviteButtonText;
  Rx<String>? eventEndText;
  Rx<String>? days;
  Rx<String>? hours;
  Rx<String>? minutes;
  Rx<String>? seconds;
  Rx<bool>? isEventActive;

  SpinGameWithdrawalModel({
    this.progressPercentage,
    this.withdrawalAmount,
    this.progressText,
    this.inviteButtonText,
    this.eventEndText,
    this.days,
    this.hours,
    this.minutes,
    this.seconds,
    this.isEventActive,
  });
}
