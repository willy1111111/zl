import 'package:get/get.dart';
import '../controller/user_profile_settings_controller.dart';
import '../../../core/app_export.dart';

class UserProfileSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserProfileSettingsController());
  }
}
