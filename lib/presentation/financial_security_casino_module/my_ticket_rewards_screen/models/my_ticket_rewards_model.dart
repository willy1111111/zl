import '../../../core/app_export.dart';

class MyTicketRewardsModel {
  Rx<String>? userId;
  Rx<String>? bonusAmount;
  Rx<int>? notificationCount;

  MyTicketRewardsModel({
    this.userId,
    this.bonusAmount,
    this.notificationCount,
  });
}
