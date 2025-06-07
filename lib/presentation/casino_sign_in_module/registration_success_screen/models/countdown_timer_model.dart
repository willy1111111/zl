import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class CountdownTimerModel {
  Rx<int> hours;
  Rx<int> minutes;
  Rx<double> seconds;

  CountdownTimerModel({
    required this.hours,
    required this.minutes,
    required this.seconds,
  });
}
