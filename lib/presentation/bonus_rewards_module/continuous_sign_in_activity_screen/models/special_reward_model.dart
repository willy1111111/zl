import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class SpecialRewardModel {
  Rx<String>? iconImage;
  Rx<String>? title;
  Rx<String>? subtitle;
  Rx<String>? status;
  Rx<String>? statusImage;
  Rx<String>? finishedImage;
  Rx<bool>? isCompleted;
  Rx<int>? backgroundColor;
  Rx<int>? iconBackgroundColor;
  Rx<String>? statusText;
  Rx<String>? starImage;

  SpecialRewardModel({
    this.iconImage,
    this.title,
    this.subtitle,
    this.status,
    this.statusImage,
    this.finishedImage,
    this.isCompleted,
    this.backgroundColor,
    this.iconBackgroundColor,
    this.statusText,
    this.starImage,
  });
}
