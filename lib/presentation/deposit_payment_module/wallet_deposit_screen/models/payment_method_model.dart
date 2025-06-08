import 'package:get/get.dart';
import '../../../core/app_export.dart';

class PaymentMethodModel {
  Rx<String>? iconPath;
  Rx<String>? name;
  Rx<bool>? isSelected;
  Rx<bool>? hasCheckIcon;
  Rx<bool>? hasWhiteBackground;
  Rx<bool>? isTextWhite;
  Rx<bool>? hasBorder;

  PaymentMethodModel({
    this.iconPath,
    this.name,
    this.isSelected,
    this.hasCheckIcon,
    this.hasWhiteBackground,
    this.isTextWhite,
    this.hasBorder,
  });
}
