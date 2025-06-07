import 'package:get/get.dart';
import '../controller/fourth_day_sign_in_controller.dart';
import '../../../../../core/app_export.dart';

class FourthDaySignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FourthDaySignInController());
  }
}
