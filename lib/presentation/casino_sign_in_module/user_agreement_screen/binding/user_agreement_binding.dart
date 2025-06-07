import 'package:get/get.dart';
import '../controller/user_agreement_controller.dart';
import '../../../../../core/app_export.dart';

class UserAgreementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserAgreementController());
  }
}
