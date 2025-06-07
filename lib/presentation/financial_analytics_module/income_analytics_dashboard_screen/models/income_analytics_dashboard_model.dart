import 'package:get/get.dart';
import '../../../core/app_export.dart';

class IncomeAnalyticsDashboardModel {
  Rx<String>? totalProfit;
  Rx<String>? todayIncome;
  Rx<String>? yesterdayIncome;
  Rx<String>? totalIncomeAmount;
  Rx<String>? dateRange;

  IncomeAnalyticsDashboardModel({
    this.totalProfit,
    this.todayIncome,
    this.yesterdayIncome,
    this.totalIncomeAmount,
    this.dateRange,
  }) {
    totalProfit = totalProfit ?? '₱ 10,111,000.00'.obs;
    todayIncome = todayIncome ?? '₱10.00'.obs;
    yesterdayIncome = yesterdayIncome ?? '₱10,000.00'.obs;
    totalIncomeAmount = totalIncomeAmount ?? '₱ 111,000.00'.obs;
    dateRange = dateRange ?? '2024/08/21 - 2024/08/27'.obs;
  }
}
