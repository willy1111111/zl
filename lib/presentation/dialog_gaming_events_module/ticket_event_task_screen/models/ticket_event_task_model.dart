import 'package:get/get.dart';
import '../../../core/app_export.dart';

class TicketEventTaskModel {
  Rx<String>? logoImagePath;
  Rx<String>? balanceAmount;
  Rx<String>? promotionalBannerImage;
  Rx<String>? notificationText;
  Rx<bool>? showTicketDialog;
  Rx<double>? overallProgress;
  Rx<String>? overallProgressPercent;

  TicketEventTaskModel({
    this.logoImagePath,
    this.balanceAmount,
    this.promotionalBannerImage,
    this.notificationText,
    this.showTicketDialog,
    this.overallProgress,
    this.overallProgressPercent,
  });
}
