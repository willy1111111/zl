import 'package:get/get.dart';
import '../controller/jet_br_gaming_promotions_controller.dart';
import '../../../../../core/app_export.dart';

class JetBrGamingPromotionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JetBrGamingPromotionsController());
  }
}
