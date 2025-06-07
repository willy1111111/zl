import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class IncomeCardModel {
  Rx<String>? title;
  Rx<String>? amount;
  Rx<String>? imagePath;
  Rx<String>? gradientType;

  IncomeCardModel({
    this.title,
    this.amount,
    this.imagePath,
    this.gradientType,
  });
}
