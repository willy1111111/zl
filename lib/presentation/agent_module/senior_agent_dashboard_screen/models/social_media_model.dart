import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class SocialMediaModel {
  Rx<String>? iconPath;
  Rx<String>? name;

  SocialMediaModel({
    this.iconPath,
    this.name,
  });
}
