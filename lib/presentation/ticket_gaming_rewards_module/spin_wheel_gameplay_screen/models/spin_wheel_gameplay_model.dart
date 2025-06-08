import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class SpinWheelGameplayModel {
  Rx<String>? balance;
  RxBool? showTicketEventOverlay;
  RxInt? selectedSidebarIndex;
  Rx<String>? countdownHours;
  Rx<String>? countdownMinutes;
  Rx<String>? countdownSeconds;
  Rx<double>? progressPercentage;

  SpinWheelGameplayModel({
    this.balance,
    this.showTicketEventOverlay,
    this.selectedSidebarIndex,
    this.countdownHours,
    this.countdownMinutes,
    this.countdownSeconds,
    this.progressPercentage,
  });
}
