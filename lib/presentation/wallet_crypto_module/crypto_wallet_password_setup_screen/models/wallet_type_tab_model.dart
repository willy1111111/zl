import 'package:get/get.dart';
import '../../../core/app_export.dart';

class WalletTypeTabModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<bool>? isSelected;

  WalletTypeTabModel({
    this.icon,
    this.title,
    this.isSelected,
  });
}
