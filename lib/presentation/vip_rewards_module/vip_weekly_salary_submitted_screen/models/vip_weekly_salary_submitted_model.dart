import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipWeeklySalarySubmittedModel {
  Rx<String>? title;
  Rx<String>? amount;
  Rx<bool>? isModalVisible;
  Rx<String>? userLevel;
  Rx<String>? weeklySalary;
  Rx<String>? collectionTime;

  VipWeeklySalarySubmittedModel({
    this.title,
    this.amount,
    this.isModalVisible,
    this.userLevel,
    this.weeklySalary,
    this.collectionTime,
  });
}
