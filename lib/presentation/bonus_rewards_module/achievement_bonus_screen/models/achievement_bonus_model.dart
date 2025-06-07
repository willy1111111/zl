import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class AchievementBonusModel {
  Rx<String>? logoPath;
  Rx<String>? balance;
  Rx<String>? currency;
  Rx<String>? totalDepositRebate;
  Rx<String>? selectedFilter;
  Rx<String>? selectedDateRange;
  RxInt? selectedTabIndex;

  AchievementBonusModel({
    this.logoPath,
    this.balance,
    this.currency,
    this.totalDepositRebate,
    this.selectedFilter,
    this.selectedDateRange,
    this.selectedTabIndex,
  });
}
