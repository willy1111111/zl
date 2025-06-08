import 'package:get/get.dart';
import '../controller/customer_support_suggestion_controller.dart';
import '../../../core/app_export.dart';

class CustomerSupportSuggestionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerSupportSuggestionController>(
      () => CustomerSupportSuggestionController(),
    );
  }
}
