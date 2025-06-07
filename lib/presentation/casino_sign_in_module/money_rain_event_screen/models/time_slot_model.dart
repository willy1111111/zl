import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class TimeSlotModel {
  Rx<String>? time;
  Rx<bool>? isActive;

  TimeSlotModel({
    String? time,
    bool? isActive,
  }) {
    this.time = (time ?? '').obs;
    this.isActive = (isActive ?? false).obs;
  }
}
