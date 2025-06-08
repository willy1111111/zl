import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [TextSafeZoneDisplayScreen] screen with GetX.

class TextSafeZoneDisplayModel {
  Rx<String>? displayText;

  TextSafeZoneDisplayModel({
    this.displayText,
  }) {
    displayText = displayText ?? "文字安全区间".obs;
  }
}
