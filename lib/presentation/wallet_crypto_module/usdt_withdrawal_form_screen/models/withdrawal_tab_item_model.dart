import 'package:get/get.dart';
import '../../../core/app_export.dart';

class WithdrawalTabItemModel {
  Rx<String> icon = ''.obs;
  Rx<String> title = ''.obs;
  Rx<bool> isSelected = false.obs;

  WithdrawalTabItemModel({
    String? icon,
    String? title,
    bool? isSelected,
  }) {
    this.icon.value = icon ?? '';
    this.title.value = title ?? '';
    this.isSelected.value = isSelected ?? false;
  }
}
