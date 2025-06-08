import 'package:get/get.dart';
import '../../../core/app_export.dart';

class DepositEntryModel {
  Rx<String>? deposit;
  Rx<String>? reward;

  DepositEntryModel({
    this.deposit,
    this.reward,
  });
}
