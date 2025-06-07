import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class BenefitItemModel {
  Rx<String>? mainIcon;
  Rx<String>? overlayIcon;
  Rx<String>? badgeIcon;
  Rx<String>? title;
  Rx<String>? value;

  BenefitItemModel({
    this.mainIcon,
    this.overlayIcon,
    this.badgeIcon,
    this.title,
    this.value,
  });
}
