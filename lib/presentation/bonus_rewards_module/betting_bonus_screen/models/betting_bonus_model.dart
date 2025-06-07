import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

/// This class is used in the [betting_bonus_screen] screen with GetX.
class BettingBonusModel {
  Rx<String>? totalBonus;
  Rx<String>? totalUsers;
  Rx<String>? selectedFilter;
  Rx<String>? dateRange;

  BettingBonusModel({
    this.totalBonus,
    this.totalUsers,
    this.selectedFilter,
    this.dateRange,
  });
}

/// Model for bonus table row data
class BonusTableRowModel {
  Rx<String>? date;
  Rx<String>? team;
  Rx<String>? bonus;

  BonusTableRowModel({
    this.date,
    this.team,
    this.bonus,
  });
}
