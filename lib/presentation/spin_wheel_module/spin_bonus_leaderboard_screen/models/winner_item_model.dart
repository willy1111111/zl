import 'package:get/get.dart';
import '../../../core/app_export.dart';

class WinnerItemModel {
  Rx<String>? userName;
  Rx<String>? spinLevel;
  Rx<String>? prizeAmount;
  Rx<String>? prizeIcon;
  Rx<bool>? hasSpecialPrize;
  Rx<String>? specialPrizeAmount;

  WinnerItemModel({
    this.userName,
    this.spinLevel,
    this.prizeAmount,
    this.prizeIcon,
    this.hasSpecialPrize,
    this.specialPrizeAmount,
  });
}
