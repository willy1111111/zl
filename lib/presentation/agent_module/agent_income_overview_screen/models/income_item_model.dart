import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class IncomeItemModel {
  Rx<String>? number;
  Rx<String>? title;
  Rx<String>? amount;
  Rx<String>? subtitle;
  Rx<double>? height;
  Rx<bool>? isMultiline;
  Rx<bool>? isAmountFirst;

  IncomeItemModel({
    this.number,
    this.title,
    this.amount,
    this.subtitle,
    this.height,
    this.isMultiline,
    this.isAmountFirst,
  });
}
