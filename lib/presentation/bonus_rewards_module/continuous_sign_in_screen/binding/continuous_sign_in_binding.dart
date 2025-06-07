import 'package:get/get.dart';
import '../controller/continuous_sign_in_controller.dart';
import '../../../../../core/app_export.dart';

class ContinuousSignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContinuousSignInController());
  }
}
