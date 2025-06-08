import 'package:flutter/material.dart';
import '../models/customer_support_suggestion_model.dart';
import '../../../core/app_export.dart';

class CustomerSupportSuggestionController extends GetxController {
  final customerSupportSuggestionModel =
      Rx<CustomerSupportSuggestionModel?>(null);

  late TextEditingController textController;

  RxBool isDropdownOpen = false.obs;
  RxString selectedQuestionType = ''.obs;
  RxInt characterCount = 0.obs;

  List<String> questionTypes = [
    'Deposit issues',
    'Withdrawal issues',
    'Game glitches',
    'Customer service',
    'Apply for agency',
    'Others'
  ];

  @override
  void onInit() {
    super.onInit();
    textController = TextEditingController();
    customerSupportSuggestionModel.value = CustomerSupportSuggestionModel();
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }

  void toggleDropdown() {
    isDropdownOpen.value = !isDropdownOpen.value;
  }

  void selectOption(String option) {
    selectedQuestionType.value = option;
    isDropdownOpen.value = false;
  }

  void updateCharacterCount(String value) {
    characterCount.value = value.length;
  }

  void onClosePressed() {
    Get.back();
  }

  void onCancelPressed() {
    Get.back();
  }

  void onSubmitPressed() {
    if (selectedQuestionType.value.isEmpty) {
      Get.snackbar(
        'Error',
        'Please select a question type',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    if (textController.text.trim().isEmpty) {
      Get.snackbar(
        'Error',
        'Please describe your problem',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    Get.snackbar(
      'Success',
      'Your suggestion has been submitted successfully',
      backgroundColor: appTheme.colorFF60AC,
      colorText: appTheme.whiteCustom,
    );

    Get.back();
  }
}
