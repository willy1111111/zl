import 'package:get/get.dart';

import '../../../../../core/app_export.dart';

class QualifiedBonusModel {
  Rx<String>? logoPath;
  Rx<String>? balanceAmount;
  Rx<String>? currency;
  Rx<String>? filterType;
  Rx<String>? dateRange;
  Rx<String>? totalBonusAmount;
  Rx<String>? totalUsersCount;

  QualifiedBonusModel({
    this.logoPath,
    this.balanceAmount,
    this.currency,
    this.filterType,
    this.dateRange,
    this.totalBonusAmount,
    this.totalUsersCount,
  });
}
