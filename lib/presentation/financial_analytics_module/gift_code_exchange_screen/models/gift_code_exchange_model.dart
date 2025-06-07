import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [GiftCodeExchangeScreen] screen with GetX.
class GiftCodeExchangeModel {
  Rx<String>? firstGiftCode;
  Rx<String>? secondGiftCode;
  Rx<String>? errorMessage;
  Rx<bool>? isFirstButtonEnabled;
  Rx<bool>? isSecondButtonEnabled;

  GiftCodeExchangeModel({
    this.firstGiftCode,
    this.secondGiftCode,
    this.errorMessage,
    this.isFirstButtonEnabled,
    this.isSecondButtonEnabled,
  });
}
