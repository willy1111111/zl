import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class RedPackageTicketEventModel {
  Rx<String>? balanceAmount;
  Rx<String>? days;
  Rx<String>? hours;
  Rx<String>? minutes;
  Rx<String>? seconds;
  Rx<double>? progress;
  Rx<int>? selectedSidebarIndex;

  RedPackageTicketEventModel({
    this.balanceAmount,
    this.days,
    this.hours,
    this.minutes,
    this.seconds,
    this.progress,
    this.selectedSidebarIndex,
  });
}
