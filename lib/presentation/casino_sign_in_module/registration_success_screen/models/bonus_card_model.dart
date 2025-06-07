import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class BonusCardModel {
  Rx<String>? cardNumber;
  Rx<String>? title;
  Rx<String>? buttonText;
  Rx<bool>? hasTimer;
  Rx<double>? height;
  Rx<bool>? hasIcon;
  Rx<String>? iconPath;

  BonusCardModel({
    this.cardNumber,
    this.title,
    this.buttonText,
    this.hasTimer,
    this.height,
    this.hasIcon,
    this.iconPath,
  });
}
