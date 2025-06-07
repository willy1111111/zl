import 'package:get/get.dart';
import '../controller/qualified_bonus_controller.dart';
import '../../../../../core/app_export.dart';

class QualifiedBonusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QualifiedBonusController>(
      () => QualifiedBonusController(),
    );
  }
}
