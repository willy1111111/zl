import 'package:get/get.dart';
import '../controller/j_bet88_login_controller.dart';
import '../../../../../core/app_export.dart';

class JBet88LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JBet88LoginController());
  }
}
