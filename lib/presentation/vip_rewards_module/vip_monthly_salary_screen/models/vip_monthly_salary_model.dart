import 'package:get/get.dart';
import '../../../core/app_export.dart';

class VipMonthlySalaryModel {
  Rx<String>? title;
  Rx<String>? description;
  Rx<String>? collectionTimeLimit;
  Rx<String>? monthlyCollectionTime;

  VipMonthlySalaryModel({
    this.title,
    this.description,
    this.collectionTimeLimit,
    this.monthlyCollectionTime,
  });
}
