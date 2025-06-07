import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class CongratulationsBonusModel {
  Rx<String>? backgroundImage;
  Rx<String>? congratulationsImage;

  CongratulationsBonusModel({
    this.backgroundImage,
    this.congratulationsImage,
  }) {
    backgroundImage = backgroundImage ?? 'assets/images/img_image_23.png'.obs;
    congratulationsImage =
        congratulationsImage ?? 'assets/images/img_congratulations.png'.obs;
  }
}
