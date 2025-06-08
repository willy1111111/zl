import 'package:get/get.dart';
import '../../../core/app_export.dart';

class BankAccountSettingsModel {
  Rx<String>? screenTitle;
  Rx<int>? selectedTabIndex;
  Rx<String>? informationText;

  BankAccountSettingsModel({
    this.screenTitle,
    this.selectedTabIndex,
    this.informationText,
  });
}
