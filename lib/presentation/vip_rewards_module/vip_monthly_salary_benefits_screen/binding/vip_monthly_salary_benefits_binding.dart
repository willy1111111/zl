import 'package:get/get.dart';
import '../controller/vip_monthly_salary_benefits_controller.dart';
import '../../../../core/app_export.dart';

class VipMonthlySalaryBenefitsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VipMonthlySalaryBenefitsController>(
      () => VipMonthlySalaryBenefitsController(),
    );
  }
}
