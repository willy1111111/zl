import 'package:get/get.dart';
import '../models/user_profile_settings_model.dart';
import '../../../core/app_export.dart';

class UserProfileSettingsController extends GetxController {
  Rx<UserProfileSettingsModel?> userProfileSettingsModel =
      Rx<UserProfileSettingsModel?>(null);
  RxInt selectedTabIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    userProfileSettingsModel.value = UserProfileSettingsModel();
  }

  void onTabChanged(int index) {
    selectedTabIndex.value = index;
  }
}
