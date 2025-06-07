import 'package:get/get.dart';
import '../controller/splash_controller.dart';
import '../../../../core/app_export.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
