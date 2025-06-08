import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/lucky_spin_wheel_game_model.dart';
import '../../../core/app_export.dart';

class LuckySpinWheelGameController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> floatingAnimation;
  late Animation<double> floatingDelayedAnimation;
  late Animation<double> spinAnimation;

  Rx<LuckySpinWheelGameModel> luckySpinWheelGameModel =
      LuckySpinWheelGameModel().obs;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    floatingAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    ));

    floatingDelayedAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(0.5, 1.0, curve: Curves.easeInOut),
    ));

    spinAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.linear,
    ));

    animationController.repeat();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  void spinWheel() {
    animationController.duration = Duration(milliseconds: 500);
    animationController.forward().then((_) {
      Future.delayed(Duration(seconds: 2), () {
        animationController.duration = Duration(seconds: 4);
        animationController.repeat();
      });
    });
  }
}
