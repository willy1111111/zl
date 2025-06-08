import '../../../core/app_export.dart';
import '../models/user_profile_settings_model.dart';

class UserProfileSettingsController extends GetxController {
  Rx<UserProfileSettingsModel?> userProfileSettingsModel =
      Rx<UserProfileSettingsModel?>(null);
  RxInt selectedTabIndex = 0.obs;
  RxBool isPasswordVisible = false.obs;

  @override
  void onInit() {
    super.onInit();
    userProfileSettingsModel.value = UserProfileSettingsModel();
  }

  void onTabChanged(int index) {
    selectedTabIndex.value = index;
    switch (index) {
      case 0:
        // General tab - current screen
        break;
      case 1:
        // Navigate to Bank Account settings
        Get.toNamed(AppRoutes.bankAccountSettingsScreen);
        break;
      case 2:
        // Navigate to Security settings
        Get.toNamed(AppRoutes.securityPasswordConfigurationScreen);
        break;
    }
  }

  void onEditEmailTap() {
    // Handle email edit action
    print('Edit email tapped');
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void onSetPasswordTap() {
    // Navigate to password setting screen
    Get.toNamed(AppRoutes.securityPasswordConfigurationScreen);
  }

  void onSaveButtonPressed() {
    // Handle save action
    print('Save button pressed');
    // Add validation and save logic here
  }

  @override
  void onClose() {
    super.onClose();
  }
}
