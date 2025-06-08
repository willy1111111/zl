import 'package:get/get.dart';
import '../controller/celebration_confetti_controller.dart';
import '../../../core/app_export.dart';

class CelebrationConfettiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CelebrationConfettiController());
  }
}
