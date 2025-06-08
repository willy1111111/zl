import 'package:get/get.dart';
import '../../../core/app_export.dart';

class TicketEventProgressModel {
  Rx<String>? balance;
  Rx<bool>? isModalVisible;
  Rx<double>? mainProgressValue;
  Rx<String>? mainProgressText;

  TicketEventProgressModel({
    this.balance,
    this.isModalVisible,
    this.mainProgressValue,
    this.mainProgressText,
  });
}
