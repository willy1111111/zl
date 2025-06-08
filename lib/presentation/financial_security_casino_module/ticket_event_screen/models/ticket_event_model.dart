import 'package:get/get.dart';
import '../../../core/app_export.dart';

class TicketEventModel {
  Rx<String>? userId;
  Rx<String>? bonusAmount;
  Rx<int>? selectedTabIndex;
  Rx<bool>? isEarnTicketSelected;

  TicketEventModel({
    this.userId,
    this.bonusAmount,
    this.selectedTabIndex,
    this.isEarnTicketSelected,
  });
}
