import '../../../core/app_export.dart';
import '../models/income_dashboard_screen_three_model.dart';

class IncomeDashboardScreenThreeController extends GetxController {
  Rx<IncomeDashboardScreenThreeModel> incomeDashboardScreenThreeModelObj =
      IncomeDashboardScreenThreeModel().obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onBottomNavTap(int index) {
    switch (index) {
      case 0:
        Get.toNamed(AppRoutes.teamsDashboardScreen);
        break;
      case 1:
        // Handle Deposit navigation
        break;
      case 2:
        // Current screen - Invite
        break;
      case 3:
        // Handle Promotion navigation
        break;
      case 4:
        Get.toNamed(AppRoutes.teamsDashboardScreen);
        break;
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
