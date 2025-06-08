import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [DepositRecordMethodFilterScreen] screen with GetX.
class DepositRecordMethodFilterModel {
  Rx<String>? title;
  Rx<bool>? showBackButton;
  Rx<bool>? showStatusBar;
  Rx<int>? selectedFilterIndex;

  DepositRecordMethodFilterModel({
    this.title,
    this.showBackButton,
    this.showStatusBar,
    this.selectedFilterIndex,
  });
}
