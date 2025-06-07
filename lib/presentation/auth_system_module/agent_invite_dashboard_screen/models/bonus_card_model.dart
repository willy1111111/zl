import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class BonusCardModel {
  Rx<String>? title;
  Rx<String>? amount;
  Rx<String>? iconPath;
  Rx<int>? gradientIndex;

  BonusCardModel({
    this.title,
    this.amount,
    this.iconPath,
    this.gradientIndex,
  });
}
