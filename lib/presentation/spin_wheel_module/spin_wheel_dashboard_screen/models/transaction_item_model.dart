import 'package:get/get.dart';

import '../../../core/app_export.dart';

class TransactionItemModel {
  Rx<String>? userId;
  Rx<String>? spinType;
  Rx<String>? rewardAmount;
  Rx<String>? rewardIconPath;
  Rx<String>? timestamp;

  TransactionItemModel({
    this.userId,
    this.spinType,
    this.rewardAmount,
    this.rewardIconPath,
    this.timestamp,
  });
}
