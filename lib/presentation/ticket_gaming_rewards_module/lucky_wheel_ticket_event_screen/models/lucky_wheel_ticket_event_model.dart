import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class LuckyWheelTicketEventModel {
  Rx<String>? balance;
  Rx<String>? eventTitle;
  Rx<String>? eventDescription;
  Rx<String>? progressPercentage;
  Rx<bool>? isSpinning;
  Rx<bool>? isEventActive;

  LuckyWheelTicketEventModel({
    this.balance,
    this.eventTitle,
    this.eventDescription,
    this.progressPercentage,
    this.isSpinning,
    this.isEventActive,
  });
}
