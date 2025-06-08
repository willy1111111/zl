import 'package:get/get.dart';
import '../../../core/app_export.dart';

class DepositMethodModel {
  Rx<String>? icon;
  Rx<String>? name;
  Rx<bool>? isSelected;

  DepositMethodModel({
    this.icon,
    this.name,
    this.isSelected,
  });
}
