import 'package:get/get.dart';
import '../../../core/app_export.dart';

class LuckyWheelSpinModel {
  Rx<String>? balance;
  Rx<String>? prizeAmount;
  Rx<bool>? showDialog;

  LuckyWheelSpinModel({
    this.balance,
    this.prizeAmount,
    this.showDialog,
  });
}
