import 'package:get/get.dart';
import '../models/junior_agent_dashboard_model.dart';
import '../../../../core/app_export.dart';

class JuniorAgentDashboardController extends GetxController {
  Rx<JuniorAgentDashboardModel> juniorAgentDashboardModelObj =
      JuniorAgentDashboardModel().obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    // Initialize the model with default data
    juniorAgentDashboardModelObj.value = JuniorAgentDashboardModel();
  }

  void onAgentTierRequirementsTap() {
    // Handle agent tier requirements navigation
    Get.snackbar(
      'Agent Tier Requirements',
      'Opening agent tier requirements and benefits',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onShareWithFriendsTap() {
    // Handle share with friends action
    Get.snackbar(
      'Share',
      'Opening share options',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onCopyReferralCodeTap() {
    // Handle copy referral code action
    Get.snackbar(
      'Copied',
      'Referral code copied to clipboard',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onSocialMediaTap(String platform) {
    // Handle social media sharing
    Get.snackbar(
      'Share',
      'Opening $platform for sharing',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onBonusCardTap(String bonusType) {
    // Handle bonus card tap
    Get.snackbar(
      'Bonus Details',
      'Opening $bonusType details',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
