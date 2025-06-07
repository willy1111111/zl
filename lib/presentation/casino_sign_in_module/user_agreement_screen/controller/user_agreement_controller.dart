import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/user_agreement_model.dart';

class UserAgreementController extends GetxController {
  Rx<UserAgreementModel> userAgreementModel = UserAgreementModel().obs;
  RxBool isScrolled = false.obs;
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    userAgreementModel.value = UserAgreementModel();
    initializeScrollController();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  void initializeScrollController() {
    scrollController.addListener(() {
      isScrolled.value = scrollController.offset > 0;
    });
  }

  void onLoginPressed() {
    Get.toNamed(AppRoutes.jBet88LoginScreen);
  }

  void onRegisterPressed() {
    Get.toNamed(AppRoutes.jBet88RegistrationScreen);
  }

  void onClosePressed() {
    Get.back();
  }

  void scrollToTop() {
    scrollController.animateTo(
      0.0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
