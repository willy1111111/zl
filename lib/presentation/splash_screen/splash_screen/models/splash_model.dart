import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class SplashModel {
  Rx<String>? backgroundImagePath;
  Rx<String>? secondaryBackgroundImagePath;
  Rx<String>? logoImagePath;
  Rx<String>? mainHeading;
  Rx<String>? subHeading;
  Rx<String>? groupIconPath;
  Rx<String>? baseUrl;

  SplashModel({
    this.backgroundImagePath,
    this.secondaryBackgroundImagePath,
    this.logoImagePath,
    this.mainHeading,
    this.subHeading,
    this.groupIconPath,
    this.baseUrl,
  });
}
