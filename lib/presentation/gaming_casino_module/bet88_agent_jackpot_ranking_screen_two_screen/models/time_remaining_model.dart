import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class TimeRemainingModel {
  Rx<String>? days;
  Rx<String>? hours;
  Rx<String>? minutes;
  Rx<String>? seconds;

  TimeRemainingModel({
    this.days,
    this.hours,
    this.minutes,
    this.seconds,
  });
}
