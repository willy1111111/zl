import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [VipWeeklySalaryDetailsScreen] screen with GetX.

class VipWeeklySalaryDetailsModel {
  Rx<String>? title;
  Rx<String>? description;
  Rx<String>? collectionTimeLimit;
  Rx<String>? weeklyCollectionTime;
  Rx<String>? requirementsNote;

  VipWeeklySalaryDetailsModel({
    this.title,
    this.description,
    this.collectionTimeLimit,
    this.weeklyCollectionTime,
    this.requirementsNote,
  });
}
