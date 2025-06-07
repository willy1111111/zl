import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class IncomeItemModel {
  Rx<String>? number;
  Rx<String>? badgeImage;
  Rx<String>? title;
  Rx<String>? amount;
  Rx<String>? subtitle;

  IncomeItemModel({
    this.number,
    this.badgeImage,
    this.title,
    this.amount,
    this.subtitle,
  });
}
