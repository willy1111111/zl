import 'package:get/get.dart';
import '../../../core/app_export.dart';

class VipMonthlySalaryDetailModel {
  Rx<String>? title;
  Rx<String>? currencyAmount;
  Rx<String>? vipLevel;
  Rx<String>? monthlySalary;
  Rx<String>? collectionTime;
  Rx<String>? countdownTime;

  VipMonthlySalaryDetailModel({
    this.title,
    this.currencyAmount,
    this.vipLevel,
    this.monthlySalary,
    this.collectionTime,
    this.countdownTime,
  });
}
