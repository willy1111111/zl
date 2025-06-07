import 'package:get/get.dart';
import '../controller/fifth_day_sign_in_controller.dart';
import '../../../../../core/app_export.dart';

class FifthDaySignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FifthDaySignInController());
  }
}
