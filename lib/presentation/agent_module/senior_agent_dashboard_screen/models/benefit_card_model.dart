import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class BenefitCardModel {
  Rx<String>? title;
  Rx<String>? highlightText;
  Rx<String>? backgroundImage;
  RxList<Rx<String>>? iconImages;

  BenefitCardModel({
    this.title,
    this.highlightText,
    this.backgroundImage,
    this.iconImages,
  });
}
