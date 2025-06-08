import '../../../core/app_export.dart';

/// This class is used in the [TicketEventRewardsScreenThree] screen with GetX.
class TicketEventRewardsScreenThreeModel {
  Rx<String> userId = "939038393".obs;
  Rx<String> bonusAmount = "₱ 123456789.00".obs;
  Rx<String> profileImagePath = ImageConstant.img87131.obs;
  Rx<String> decorationImagePath = ImageConstant.img10161.obs;
  Rx<String> bonusLabel = "Total Ticket Bonus:".obs;
  Rx<int> notificationCount = 9.obs;
  Rx<String> taskInfoText = "Completing tasks below earns ticket".obs;

  TicketEventRewardsScreenThreeModel();
}
