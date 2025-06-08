import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [SuggestionFeedbackModalScreenTwo] screen with GetX.

class SuggestionFeedbackModalScreenTwoModel {
  Rx<String>? questionType;
  Rx<String>? description;
  Rx<bool>? isSubmitted;

  SuggestionFeedbackModalScreenTwoModel({
    this.questionType,
    this.description,
    this.isSubmitted,
  });
}
