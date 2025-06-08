import 'package:get/get.dart';
import '../../../core/app_export.dart';

class BankAccountSettingsModel {
  Rx<String>? title;
  Rx<String>? balanceAmount;
  Rx<int>? selectedTabIndex;

  BankAccountSettingsModel({
    this.title,
    this.balanceAmount,
    this.selectedTabIndex,
  });
}
