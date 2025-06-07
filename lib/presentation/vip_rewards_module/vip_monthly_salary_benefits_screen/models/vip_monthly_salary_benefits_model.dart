import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipMonthlySalaryBenefitsModel {
  Rx<String>? title;
  Rx<String>? amount;
  Rx<String>? userLevel;
  Rx<String>? monthlySalary;
  Rx<String>? collectionTime;
  Rx<String>? expirationCountdown;

  VipMonthlySalaryBenefitsModel({
    this.title,
    this.amount,
    this.userLevel,
    this.monthlySalary,
    this.collectionTime,
    this.expirationCountdown,
  });
}
