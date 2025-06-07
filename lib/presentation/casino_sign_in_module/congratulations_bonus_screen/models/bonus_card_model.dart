import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class BonusCardModel {
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<String>? bonusLabel;
  Rx<String>? bonusAmount;
  Rx<String>? buttonText;

  BonusCardModel({
    this.iconPath,
    this.title,
    this.bonusLabel,
    this.bonusAmount,
    this.buttonText,
  });
}
