import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class UrlIndicatorModel {
  Rx<String>? url;
  Rx<String>? iconPath;
  Rx<String>? backgroundImagePath;
  Rx<String>? overlayImagePath;

  UrlIndicatorModel({
    this.url,
    this.iconPath,
    this.backgroundImagePath,
    this.overlayImagePath,
  });
}
