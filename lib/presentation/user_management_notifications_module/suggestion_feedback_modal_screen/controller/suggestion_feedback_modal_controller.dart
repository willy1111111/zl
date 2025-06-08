import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/suggestion_feedback_modal_model.dart';
import '../../../core/app_export.dart';

class SuggestionFeedbackModalController extends GetxController {
  Rx<SuggestionFeedbackModalModel> suggestionFeedbackModalModel =
      SuggestionFeedbackModalModel().obs;

  late TextEditingController descriptionController;

  Rx<String?> selectedQuestionType = 'Deposit issues'.obs;
  RxInt characterCount = 0.obs;
  Rx<bool?> showErrorMessage = false.obs;

  @override
  void onInit() {
    super.onInit();
    descriptionController = TextEditingController();
  }

  @override
  void onClose() {
    descriptionController.dispose();
    super.onClose();
  }

  void onDropdownTapped() {
    // Handle dropdown selection logic
    print('Dropdown tapped');
  }

  void onDescriptionChanged(String value) {
    characterCount.value = value.length;
    suggestionFeedbackModalModel.value.description?.value = value;
  }

  void onCancelPressed() {
    Get.back();
  }

  void onSubmitPressed() {
    if (descriptionController.text.isNotEmpty) {
      // Handle form submission
      print('Form submitted with: ${descriptionController.text}');
      Get.back();
    } else {
      showErrorMessage.value = true;
    }
  }

  void onClosePressed() {
    Get.back();
  }
}
