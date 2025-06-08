import 'package:get/get.dart';
import '../../../core/app_export.dart';

class WalletTypeOptionModel {
  Rx<String>? type;
  Rx<bool>? isSelected;

  WalletTypeOptionModel({
    this.type,
    this.isSelected,
  }) {
    type ??= ''.obs;
    isSelected ??= false.obs;
  }
}
