import 'package:get/get.dart';
import '../../../core/app_export.dart';

class TicketEventRewardsScreenFourModel {
  Rx<String>? userId;
  Rx<String>? bonusAmount;
  Rx<bool>? showModal;
  Rx<int>? selectedTabIndex;

  TicketEventRewardsScreenFourModel({
    this.userId,
    this.bonusAmount,
    this.showModal,
    this.selectedTabIndex,
  });
}
