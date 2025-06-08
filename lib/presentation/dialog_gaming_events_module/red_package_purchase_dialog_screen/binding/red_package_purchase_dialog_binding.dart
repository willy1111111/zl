import 'package:get/get.dart';

import '../controller/red_package_purchase_dialog_controller.dart';

import '../../../core/app_export.dart';

class RedPackagePurchaseDialogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RedPackagePurchaseDialogController());
  }
}
