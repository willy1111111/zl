import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used for winner notification items in the [Jeet98SpinWheelBonusScreen] screen with GetX.

class WinnerItemModel {
  Rx<String>? username;
  Rx<String>? status;
  Rx<String>? amount;

  WinnerItemModel({
    this.username,
    this.status,
    this.amount,
  });
}
