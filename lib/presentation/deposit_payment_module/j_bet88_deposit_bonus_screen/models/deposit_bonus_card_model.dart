import 'package:get/get.dart';
import '../../../core/app_export.dart';

class DepositBonusCardModel {
  Rx<String>? depositOrder;
  Rx<String>? depositLabel;
  Rx<String>? mainPercentage;
  Rx<String>? extraPercentage;
  Rx<String>? upToPercentage;
  Rx<String>? polygon1ImagePath;
  Rx<String>? polygon2ImagePath;

  DepositBonusCardModel({
    this.depositOrder,
    this.depositLabel,
    this.mainPercentage,
    this.extraPercentage,
    this.upToPercentage,
    this.polygon1ImagePath,
    this.polygon2ImagePath,
  }) {
    polygon1ImagePath =
        polygon1ImagePath ?? 'assets/images/img_polygon_1_46x54.png'.obs;
    polygon2ImagePath =
        polygon2ImagePath ?? 'assets/images/img_polygon_2_44x51.png'.obs;
  }
}
