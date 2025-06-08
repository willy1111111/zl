import 'package:get/get.dart';
import '../controller/jbet88_benefits_promotion_controller.dart';
import '../../../core/app_export.dart';

class Jbet88BenefitsPromotionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Jbet88BenefitsPromotionController());
  }
}
