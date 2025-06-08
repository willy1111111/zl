import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [TicketEventRewardsScreen] screen with GetX.

class TicketEventRewardsModel {
  Rx<String>? userId;
  Rx<String>? bonusAmount;
  Rx<String>? profileImagePath;
  Rx<String>? decorationImagePath;

  TicketEventRewardsModel({
    this.userId,
    this.bonusAmount,
    this.profileImagePath,
    this.decorationImagePath,
  });
}
