import 'package:get/get.dart';
import '../../../core/app_export.dart';

class IntegratedSpinWheelGamingModel {
  Rx<String>? logoImage;
  Rx<String>? balanceAmount;
  Rx<bool>? showTicketModal;
  Rx<String>? notificationText;
  Rx<double>? progressPercentage;
  Rx<String>? countdownHours;
  Rx<String>? countdownMinutes;
  Rx<String>? countdownSeconds;

  IntegratedSpinWheelGamingModel({
    this.logoImage,
    this.balanceAmount,
    this.showTicketModal,
    this.notificationText,
    this.progressPercentage,
    this.countdownHours,
    this.countdownMinutes,
    this.countdownSeconds,
  });
}
