import 'package:get/get.dart';
import '../../../core/app_export.dart';

class TicketEventRewardsScreenTwoModel {
  Rx<String>? userId;
  Rx<String>? bonusAmount;
  Rx<int>? selectedTabIndex;
  Rx<bool>? showModal;

  TicketEventRewardsScreenTwoModel({
    this.userId,
    this.bonusAmount,
    this.selectedTabIndex,
    this.showModal,
  });
}
