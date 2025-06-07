import 'package:get/get.dart';
import '../../../../../core/app_export.dart';
import '../widgets/bonus_history_table_row_widget.dart';

/// This class is used in the [BonusHistoryTableRowWidget] component with GetX.

class BonusHistoryItemModel {
  Rx<String>? date;
  Rx<String>? teams;
  Rx<String>? depositAmount;
  Rx<String>? bonus;

  BonusHistoryItemModel({
    this.date,
    this.teams,
    this.depositAmount,
    this.bonus,
  });
}
