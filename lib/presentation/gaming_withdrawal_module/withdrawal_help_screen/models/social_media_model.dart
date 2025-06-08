import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SocialMediaModel {
  Rx<String>? icon;
  Rx<String>? label;
  Rx<bool>? isBold;
  Rx<bool>? isRounded;

  SocialMediaModel({
    this.icon,
    this.label,
    this.isBold,
    this.isRounded,
  });
}
