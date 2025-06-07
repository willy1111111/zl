import 'package:get/get.dart';
import '../controller/achievement_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class AchievementDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AchievementDashboardController());
  }
}
