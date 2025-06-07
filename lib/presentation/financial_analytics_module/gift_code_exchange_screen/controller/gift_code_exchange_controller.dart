import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/gift_code_exchange_model.dart';
import '../../../core/app_export.dart';

class GiftCodeExchangeController extends GetxController {
  late TextEditingController firstInputController;
  late TextEditingController secondInputController;

  Rx<GiftCodeExchangeModel> giftCodeExchangeModel = GiftCodeExchangeModel().obs;

  @override
  void onInit() {
    super.onInit();
    firstInputController = TextEditingController();
    secondInputController = TextEditingController();

    // Initialize second input with demo value
    secondInputController.text = '123456789xxx';

    giftCodeExchangeModel.value = GiftCodeExchangeModel(
      firstGiftCode: ''.obs,
      secondGiftCode: '123456789xxx'.obs,
      errorMessage: 'The redemption code has expired'.obs,
      isFirstButtonEnabled: false.obs,
      isSecondButtonEnabled: true.obs,
    );
  }

  @override
  void onClose() {
    firstInputController.dispose();
    secondInputController.dispose();
    super.onClose();
  }

  void onFirstExchangePressed() {
    if (giftCodeExchangeModel.value.isFirstButtonEnabled?.value ?? false) {
      // Handle first exchange action
      Get.snackbar('Exchange', 'Processing first gift code exchange...');
    }
  }

  void onSecondExchangePressed() {
    if (giftCodeExchangeModel.value.isSecondButtonEnabled?.value ?? false) {
      // Handle second exchange action
      Get.snackbar('Exchange', 'Processing second gift code exchange...');
    }
  }

  void onSendPressed() {
    // Handle send action
    Get.snackbar('Send', 'Sending verification code...');
  }

  void updateFirstGiftCode(String value) {
    giftCodeExchangeModel.value.firstGiftCode?.value = value;
    giftCodeExchangeModel.value.isFirstButtonEnabled?.value = value.isNotEmpty;
  }

  void updateSecondGiftCode(String value) {
    giftCodeExchangeModel.value.secondGiftCode?.value = value;
    giftCodeExchangeModel.value.isSecondButtonEnabled?.value = value.isNotEmpty;
  }
}
