import 'package:get/get.dart';
import '../controller/suggestion_feedback_modal_screen_two_controller.dart';
import '../../../core/app_export.dart';

class SuggestionFeedbackModalScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuggestionFeedbackModalScreenTwoController());
  }
}
