import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class VipWeeklySalaryModel {
  Rx<String>? vipLevel;
  Rx<String>? weeklySalary;
  Rx<String>? collectionTime;
  Rx<String>? currencyAmount;
  Rx<bool>? hasRewardsAvailable;

  VipWeeklySalaryModel({
    this.vipLevel,
    this.weeklySalary,
    this.collectionTime,
    this.currencyAmount,
    this.hasRewardsAvailable,
  });

  VipWeeklySalaryModel.fromJson(Map<String, dynamic> json) {
    vipLevel = (json['vipLevel'] ?? 'V8').obs;
    weeklySalary = (json['weeklySalary'] ?? '₱1999').obs;
    collectionTime = (json['collectionTime'] ?? 'Sunday 22:00:00').obs;
    currencyAmount = (json['currencyAmount'] ?? 'R\$1980.00').obs;
    hasRewardsAvailable = (json['hasRewardsAvailable'] ?? false).obs;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['vipLevel'] = vipLevel?.value;
    data['weeklySalary'] = weeklySalary?.value;
    data['collectionTime'] = collectionTime?.value;
    data['currencyAmount'] = currencyAmount?.value;
    data['hasRewardsAvailable'] = hasRewardsAvailable?.value;
    return data;
  }
}
