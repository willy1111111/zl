import 'package:get/get.dart';
import '../controller/continuous_sign_in_activity_controller.dart';
import '../../../../../core/app_export.dart';

class ContinuousSignInActivityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContinuousSignInActivityController());
  }
}
