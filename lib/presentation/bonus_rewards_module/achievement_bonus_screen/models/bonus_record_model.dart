import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class BonusRecordModel {
  Rx<String>? date;
  Rx<String>? ranking;
  Rx<String>? bonus;

  BonusRecordModel({
    this.date,
    this.ranking,
    this.bonus,
  });
}
