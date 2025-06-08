import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [app_download_bonus_ticket_screen] screen with GetX.

class AppDownloadBonusTicketModel {
  Rx<String>? balanceAmount;
  Rx<String>? notificationText;
  Rx<String>? bonusText;
  Rx<double>? progressPercentage;

  AppDownloadBonusTicketModel({
    this.balanceAmount,
    this.notificationText,
    this.bonusText,
    this.progressPercentage,
  });
}
