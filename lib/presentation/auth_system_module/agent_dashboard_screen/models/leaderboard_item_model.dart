import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class LeaderboardItemModel {
  Rx<String>? userNumber;
  Rx<String>? action;
  Rx<String>? amount;

  LeaderboardItemModel({
    this.userNumber,
    this.action,
    this.amount,
  });
}
