import 'package:get/get.dart';
import '../controller/login_session_expired_controller.dart';
import '../../../../core/app_export.dart';

class LoginSessionExpiredBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginSessionExpiredController());
  }
}
