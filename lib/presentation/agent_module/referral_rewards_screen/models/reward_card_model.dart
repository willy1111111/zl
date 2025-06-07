import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class RewardCardModel {
  Rx<String>? title;
  Rx<String>? amount;

  RewardCardModel({
    this.title,
    this.amount,
  });
}
