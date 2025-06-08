import 'package:get/get.dart';

import '../../../core/app_export.dart';

class SocialMediaExampleModel {
  Rx<String>? platform;
  Rx<String>? firstImage;
  Rx<String>? secondImage;
  Rx<bool>? hasBorder;

  SocialMediaExampleModel({
    this.platform,
    this.firstImage,
    this.secondImage,
    this.hasBorder,
  });
}
