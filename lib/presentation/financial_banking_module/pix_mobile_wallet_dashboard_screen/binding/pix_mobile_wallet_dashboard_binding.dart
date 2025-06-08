import 'package:get/get.dart';
import '../controller/pix_mobile_wallet_dashboard_controller.dart';
import '../../../core/app_export.dart';

class PixMobileWalletDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PixMobileWalletDashboardController());
  }
}
