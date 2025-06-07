import 'package:get/get.dart';
import '../../../core/app_export.dart';

class RewardsCongratulationsModel {
  Rx<String>? userName;
  Rx<String>? userId;
  Rx<String>? balance;
  Rx<String>? vipLevel;

  RewardsCongratulationsModel({
    this.userName,
    this.userId,
    this.balance,
    this.vipLevel,
  });
}
