import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SuggestionFeedbackModalModel {
  Rx<String>? questionType;
  Rx<String>? description;
  Rx<bool>? isErrorVisible;

  SuggestionFeedbackModalModel({
    this.questionType,
    this.description,
    this.isErrorVisible,
  });
}
