import 'package:flutter/material.dart';
import '../models/jeet98_spin_wheel_bonus_model.dart';
import '../models/winner_item_model.dart';
import '../../../core/app_export.dart';

class Jeet98SpinWheelBonusController extends GetxController
    with GetTickerProviderStateMixin {
  Rx<Jeet98SpinWheelBonusModel> jeet98SpinWheelBonusModelObj =
      Jeet98SpinWheelBonusModel().obs;

  RxList<WinnerItemModel> winnersList = <WinnerItemModel>[].obs;
  RxInt spinCount = 1.obs;
  RxBool isSpinning = false.obs;
  RxBool isWinnerUpdateActive = false.obs;

  late AnimationController spinAnimationController;
  late AnimationController floatAnimationController;

  @override
  void onInit() {
    super.onInit();
    initializeWinners();
    setupAnimationControllers();
    startWinnerUpdates();
  }

  @override
  void onClose() {
    spinAnimationController.dispose();
    floatAnimationController.dispose();
    super.onClose();
  }

  void setupAnimationControllers() {
    spinAnimationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    floatAnimationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    floatAnimationController.repeat(reverse: true);
  }

  void initializeWinners() {
    winnersList.value = [
      WinnerItemModel(
        username: 'ai********6'.obs,
        status: 'Just received it'.obs,
        amount: '+₱100'.obs,
      ),
      WinnerItemModel(
        username: 'md********6'.obs,
        status: 'Just received it'.obs,
        amount: '+₱100'.obs,
      ),
      WinnerItemModel(
        username: 'su********0'.obs,
        status: 'Just received it'.obs,
        amount: '+₱100'.obs,
      ),
    ];
  }

  void startWinnerUpdates() {
    isWinnerUpdateActive.value = true;

    List<WinnerItemModel> winnerPool = [
      WinnerItemModel(
        username: 'ai********6'.obs,
        status: 'Just received it'.obs,
        amount: '+₱100'.obs,
      ),
      WinnerItemModel(
        username: 'md********6'.obs,
        status: 'Just received it'.obs,
        amount: '+₱100'.obs,
      ),
      WinnerItemModel(
        username: 'su********0'.obs,
        status: 'Just received it'.obs,
        amount: '+₱100'.obs,
      ),
      WinnerItemModel(
        username: 'pk********2'.obs,
        status: 'Just received it'.obs,
        amount: '+₱50'.obs,
      ),
      WinnerItemModel(
        username: 'rj********8'.obs,
        status: 'Just received it'.obs,
        amount: '+₱200'.obs,
      ),
    ];

    // Update winners every 5 seconds
    Stream.periodic(Duration(seconds: 5)).listen((_) {
      if (isWinnerUpdateActive.value) {
        int randomIndex = (winnerPool.length *
                (DateTime.now().millisecondsSinceEpoch % 1000) /
                1000)
            .floor();
        WinnerItemModel randomWinner = winnerPool[randomIndex];

        if (winnersList.length >= 3) {
          winnersList.removeAt(0);
        }
        winnersList.add(randomWinner);
      }
    });
  }

  void onSpinPressed() {
    if (!(isSpinning.value ?? false)) {
      isSpinning.value = true;

      spinAnimationController.forward().then((_) {
        spinAnimationController.reset();
        isSpinning.value = false;

        // Simulate winning result
        List<String> prizes = ['₱100', '₱50', '₱200', '₱500', '₱1000'];
        int randomPrizeIndex = (prizes.length *
                (DateTime.now().millisecondsSinceEpoch % 1000) /
                1000)
            .floor();
        String wonAmount = prizes[randomPrizeIndex];

        Get.snackbar(
          'Congratulations!',
          'You won $wonAmount!',
          backgroundColor: appTheme.colorFF85D4,
          colorText: appTheme.whiteCustom,
          snackPosition: SnackPosition.TOP,
          duration: Duration(seconds: 3),
        );

        // Update spin count after winning
        if (spinCount.value > 0) {
          spinCount.value = spinCount.value - 1;
        }
      });
    }
  }

  void onClosePressed() {
    Get.back();
  }

  void onDownloadPressed() {
    Get.snackbar(
      'Download Started',
      'App download initiated successfully!',
      backgroundColor: appTheme.colorFF232B,
      colorText: appTheme.whiteCustom,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
  }
}
