import 'package:get/get.dart';
import '../../../core/app_export.dart';

class WalletTypeModel {
  Rx<String>? title;
  Rx<bool>? isSelected;

  WalletTypeModel({
    this.title,
    this.isSelected,
  }) {
    title = title ?? ''.obs;
    isSelected = isSelected ?? false.obs;
  }
}
