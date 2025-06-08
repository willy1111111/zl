import 'package:get/get.dart';
import '../controller/suggestion_feedback_modal_controller.dart';
import '../../../core/app_export.dart';

class SuggestionFeedbackModalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuggestionFeedbackModalController());
  }
}
