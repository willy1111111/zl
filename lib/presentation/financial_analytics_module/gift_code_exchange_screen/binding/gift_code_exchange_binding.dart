import 'package:get/get.dart';
import '../controller/gift_code_exchange_controller.dart';
import '../../../core/app_export.dart';

class GiftCodeExchangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GiftCodeExchangeController>(
      () => GiftCodeExchangeController(),
    );
  }
}
