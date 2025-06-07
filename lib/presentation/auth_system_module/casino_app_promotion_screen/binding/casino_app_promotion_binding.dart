import 'package:get/get.dart';
import '../controller/casino_app_promotion_controller.dart';
import '../../../../core/app_export.dart';

class CasinoAppPromotionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CasinoAppPromotionController>(
      () => CasinoAppPromotionController(),
    );
  }
}
