import 'package:get/get.dart';
import '../models/text_safe_zone_display_model.dart';
import '../../../core/app_export.dart';

class TextSafeZoneDisplayController extends GetxController {
  Rx<TextSafeZoneDisplayModel> textSafeZoneDisplayModel =
      TextSafeZoneDisplayModel().obs;

  @override
  void onInit() {
    super.onInit();
    textSafeZoneDisplayModel.value = TextSafeZoneDisplayModel();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
