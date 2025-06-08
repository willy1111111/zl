import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/spiritual_radiance_model.dart';
import '../../../core/app_export.dart';

class SpiritualRadianceController extends GetxController
    with GetTickerProviderStateMixin {
  Rx<SpiritualRadianceModel?> spiritualRadianceModel =
      Rx<SpiritualRadianceModel?>(null);

  RxDouble imageScale = 1.0.obs;
  late AnimationController breathingAnimationController;

  @override
  void onInit() {
    super.onInit();
    spiritualRadianceModel.value = SpiritualRadianceModel();
    _initializeBreathingAnimation();
  }

  @override
  void onReady() {
    super.onReady();
    _startBreathingAnimation();
  }

  @override
  void onClose() {
    breathingAnimationController.dispose();
    super.onClose();
  }

  void _initializeBreathingAnimation() {
    breathingAnimationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
  }

  void _startBreathingAnimation() {
    breathingAnimationController.repeat(reverse: true);

    breathingAnimationController.addListener(() {
      imageScale.value = 1.0 + (breathingAnimationController.value * 0.05);
    });
  }

  void onImageTapDown() {
    imageScale.value = 0.95;
  }

  void onImageTapUp() {
    imageScale.value = 1.0;
  }
}
