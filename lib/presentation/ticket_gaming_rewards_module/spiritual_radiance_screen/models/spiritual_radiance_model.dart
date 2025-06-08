import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [SpiritualRadianceScreen] screen with GetX.

class SpiritualRadianceModel {
  Rx<String>? radianceImagePath;

  SpiritualRadianceModel({
    this.radianceImagePath,
  }) {
    radianceImagePath = radianceImagePath ?? 'assets/images/img_f_1.png'.obs;
  }
}
