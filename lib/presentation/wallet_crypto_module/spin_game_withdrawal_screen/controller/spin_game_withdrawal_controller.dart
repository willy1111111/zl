import 'package:get/get.dart';
import '../models/spin_game_withdrawal_model.dart';
import '../../../core/app_export.dart';

class SpinGameWithdrawalController extends GetxController {
  Rx<SpinGameWithdrawalModel> spinGameWithdrawalModel =
      SpinGameWithdrawalModel().obs;

  RxString progressPercentage = '70%'.obs;
  RxString withdrawalAmount = '₱100'.obs;
  RxString progressText =
      'only need to invite 3 more people to withdraw ₱100'.obs;
  RxString inviteButtonText = 'Invite 3 friends to GET ₱1000'.obs;

  // Timer values
  RxString days = '02'.obs;
  RxString hours = '01'.obs;
  RxString minutes = '21'.obs;
  RxString seconds = '06'.obs;

  @override
  void onInit() {
    super.onInit();
    startCountdown();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onInviteFriends() {
    // Handle invite friends functionality
    Get.snackbar(
      'Invite Friends',
      'Redirecting to invite friends...',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onCloseDialog() {
    // Modified: Renamed duplicate onClose method to onCloseDialog
    Get.back();
  }

  void startCountdown() {
    // Start countdown timer logic
    // This would typically connect to a real countdown mechanism
  }

  void updateTimer() {
    // Update timer values
    update();
  }
}
