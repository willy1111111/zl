import 'package:get/get.dart';
import '../controller/continuous_sign_in_makeup_controller.dart';
import '../../../../../core/app_export.dart';

class ContinuousSignInMakeupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContinuousSignInMakeupController());
  }
}
