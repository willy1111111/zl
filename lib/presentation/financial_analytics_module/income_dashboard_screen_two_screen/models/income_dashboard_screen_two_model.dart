import 'package:get/get.dart';
import '../../../core/app_export.dart';

class IncomeDashboardScreenTwoModel {
  Rx<String>? totalProfit;
  Rx<String>? todayIncome;
  Rx<String>? yesterdayIncome;
  Rx<String>? dateRange;
  Rx<String>? totalIncomeAmount;

  IncomeDashboardScreenTwoModel({
    this.totalProfit,
    this.todayIncome,
    this.yesterdayIncome,
    this.dateRange,
    this.totalIncomeAmount,
  });
}
