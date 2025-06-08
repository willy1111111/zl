import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GoldenEggRewardDialogModel {
  Rx<String>? prizeAmount;
  Rx<bool>? showDialog;
  Rx<String>? headerText;
  Rx<String>? balanceAmount;

  GoldenEggRewardDialogModel({
    this.prizeAmount,
    this.showDialog,
    this.headerText,
    this.balanceAmount,
  });
}
