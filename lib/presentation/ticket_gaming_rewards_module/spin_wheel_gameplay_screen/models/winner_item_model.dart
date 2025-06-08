import 'package:get/get.dart';
import '../../../core/app_export.dart';

class WinnerItemModel {
  Rx<String>? avatarPath;
  Rx<String>? username;
  Rx<String>? bonusAmount;

  WinnerItemModel({
    this.avatarPath,
    this.username,
    this.bonusAmount,
  });
}
