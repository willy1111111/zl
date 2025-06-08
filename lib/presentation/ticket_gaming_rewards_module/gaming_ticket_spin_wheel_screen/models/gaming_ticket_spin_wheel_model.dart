import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class GamingTicketSpinWheelModel {
  Rx<String>? balance;
  Rx<bool>? showEventOverlay;
  Rx<String>? remainingTime;
  Rx<double>? progressPercentage;

  GamingTicketSpinWheelModel({
    this.balance,
    this.showEventOverlay,
    this.remainingTime,
    this.progressPercentage,
  });
}
