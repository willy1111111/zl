import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SocialMediaModel {
  Rx<String>? iconPath;
  Rx<String>? platform;

  SocialMediaModel({
    this.iconPath,
    this.platform,
  });
}
