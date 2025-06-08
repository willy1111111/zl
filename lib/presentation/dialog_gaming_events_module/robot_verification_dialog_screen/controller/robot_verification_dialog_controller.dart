import 'package:flutter/material.dart';
import '../../../../../core/app_export.dart';
import '../models/robot_verification_dialog_model.dart';

class RobotVerificationDialogController extends GetxController {
  Rx<RobotVerificationDialogModel> robotVerificationModel =
      RobotVerificationDialogModel().obs;

  TextEditingController captchaController = TextEditingController();
  
  RxBool isLoading = false.obs;
  RxBool isVerifying = false.obs;
  RxString captchaImagePath = ImageConstant.imgCaptchaPlaceholder.obs;
  RxString correctCaptcha = ''.obs;

  @override
  void onInit() {
    super.onInit();
    generateCaptcha();
  }

  @override
  void onClose() {
    captchaController.dispose();
    super.onClose();
  }

  /// 生成验证码
  void generateCaptcha() {
    isLoading.value = true;
    
    // 模拟生成验证码
    Future.delayed(Duration(milliseconds: 500), () {
      // 生成4位随机验证码
      final random = DateTime.now().millisecondsSinceEpoch;
      correctCaptcha.value = (random % 9000 + 1000).toString();
      
      // 这里应该调用后端API生成验证码图片
      // 暂时使用占位图片
      captchaImagePath.value = ImageConstant.imgCaptchaPlaceholder;
      
      isLoading.value = false;
    });
  }

  /// 刷新验证码
  void refreshCaptcha() {
    captchaController.clear();
    generateCaptcha();
  }

  /// 验证验证码
  void onVerifyCaptcha() async {
    if (captchaController.text.trim().isEmpty) {
      Get.snackbar(
        '提示',
        '请输入验证码',
        backgroundColor: appTheme.errorColor,
        colorText: appTheme.whiteA700,
      );
      return;
    }

    isVerifying.value = true;

    try {
      // 模拟验证过程
      await Future.delayed(Duration(milliseconds: 1000));
      
      // 这里应该调用后端API验证验证码
      // 暂时使用本地验证
      if (captchaController.text.trim() == correctCaptcha.value) {
        Get.snackbar(
          '成功',
          '验证通过',
          backgroundColor: appTheme.successColor,
          colorText: appTheme.whiteA700,
        );
        
        // 验证成功后关闭弹窗
        Get.back(result: true);
      } else {
        Get.snackbar(
          '错误',
          '验证码错误，请重新输入',
          backgroundColor: appTheme.errorColor,
          colorText: appTheme.whiteA700,
        );
        
        // 验证失败后刷新验证码
        refreshCaptcha();
      }
    } catch (e) {
      Get.snackbar(
        '错误',
        '验证失败，请重试',
        backgroundColor: appTheme.errorColor,
        colorText: appTheme.whiteA700,
      );
    } finally {
      isVerifying.value = false;
    }
  }

  /// 关闭弹窗
  void onCloseDialog() {
    Get.back(result: false);
  }

  /// 显示机器人验证弹窗
  static Future<bool?> showRobotVerificationDialog() async {
    return await Get.dialog<bool>(
      RobotVerificationDialogScreen(),
      barrierDismissible: false,
    );
  }
}