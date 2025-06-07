import 'package:get/get.dart';
import '../../../../../core/app_export.dart';
import '../widgets/bonus_data_table_widget.dart';

/// This class is used in the [BonusDataTableWidget] widget with GetX.

class BonusDataModel {
  Rx<String>? date;
  Rx<String>? team;
  Rx<String>? bonus;
  Rx<bool>? isEvenRow;

  BonusDataModel({
    this.date,
    this.team,
    this.bonus,
    this.isEvenRow,
  });
}
