import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class KeyboardKeyModel {
  Rx<String>? keyText;
  Rx<bool>? isSpecialKey;
  Rx<double>? keyWidth;

  KeyboardKeyModel({
    this.keyText,
    this.isSpecialKey,
    this.keyWidth,
  }) {
    keyText = keyText ?? ''.obs;
    isSpecialKey = isSpecialKey ?? false.obs;
    keyWidth = keyWidth ?? 32.0.obs;
  }
}
