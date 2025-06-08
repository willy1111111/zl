import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class TreasureChestTicketClaimModel {
  Rx<String>? balance;
  Rx<String>? progressAmount;
  Rx<String>? progressPercentage;
  Rx<String>? remainingTime;
  Rx<bool>? isEventDialogVisible;

  TreasureChestTicketClaimModel({
    this.balance,
    this.progressAmount,
    this.progressPercentage,
    this.remainingTime,
    this.isEventDialogVisible,
  });
}
