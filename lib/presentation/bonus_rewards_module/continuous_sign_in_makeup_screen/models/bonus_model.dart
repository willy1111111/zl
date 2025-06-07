import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class BonusModel {
  Rx<String>? title;
  Rx<String>? backgroundIcon;
  Rx<String>? mainIcon;

  BonusModel({
    this.title,
    this.backgroundIcon,
    this.mainIcon,
  });
}
