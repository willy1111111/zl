import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class ScheduleDayModel {
  Rx<String>? day;
  Rx<bool>? isActive;

  ScheduleDayModel({
    String? day,
    bool? isActive,
  }) {
    this.day = (day ?? '').obs;
    this.isActive = (isActive ?? false).obs;
  }
}
