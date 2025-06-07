import 'package:get/get.dart';
import '../controller/sign_in_re_sign_controller.dart';
import '../../../../../core/app_export.dart';

class SignInReSignBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInReSignController());
  }
}
