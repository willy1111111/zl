import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/suggestion_feedback_modal_screen_two_model.dart';

class SuggestionFeedbackModalScreenTwoController extends GetxController {
  Rx<SuggestionFeedbackModalScreenTwoModel>
      suggestionFeedbackModalScreenTwoModel =
      SuggestionFeedbackModalScreenTwoModel().obs;

  late TextEditingController descriptionController;

  Rx<String?> selectedQuestionType = Rx<String?>(null);
  RxInt characterCount = 0.obs;

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

  void onDropdownPressed() {
    // Handle dropdown selection
    Get.bottomSheet(
      Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: appTheme.colorFF3F43,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                'General Question',
                style: TextStyleHelper.instance.textStyle17
                    .copyWith(color: appTheme.whiteCustom),
              ),
              onTap: () {
                selectedQuestionType.value = 'General Question';
                Get.back();
              },
            ),
            ListTile(
              title: Text(
                'Technical Issue',
                style: TextStyleHelper.instance.textStyle17
                    .copyWith(color: appTheme.whiteCustom),
              ),
              onTap: () {
                selectedQuestionType.value = 'Technical Issue';
                Get.back();
              },
            ),
            ListTile(
              title: Text(
                'Feature Request',
                style: TextStyleHelper.instance.textStyle17
                    .copyWith(color: appTheme.whiteCustom),
              ),
              onTap: () {
                selectedQuestionType.value = 'Feature Request';
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }

  void onDescriptionChanged(String value) {
    characterCount.value = value.length;
  }

  void onClosePressed() {
    Get.back();
  }

  void onCancelPressed() {
    Get.back();
  }

  void onSubmitPressed() {
    if (selectedQuestionType.value == null) {
      Get.snackbar(
        'Error',
        'Please select a question type',
        backgroundColor: appTheme.colorFF60AC,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    if (descriptionController.text.trim().isEmpty) {
      Get.snackbar(
        'Error',
        'Please describe your problem',
        backgroundColor: appTheme.colorFF60AC,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    // Submit the suggestion
    Get.snackbar(
      'Success',
      'Your suggestion has been submitted successfully',
      backgroundColor: appTheme.colorFF60AC,
      colorText: appTheme.whiteCustom,
    );

    // Close the modal after submission
    Get.back();
  }
}
