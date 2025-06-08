import 'dart:async';
import 'dart:math';
import '../../../../core/app_export.dart';
import '../models/ios_game_entry_hidden_model.dart';
import 'package:flutter/material.dart';

class IosGameEntryHiddenController extends GetxController {
  TextEditingController secretCodeController = TextEditingController();
  
  Rx<IosGameEntryHiddenModel> iosGameEntryModel =
      IosGameEntryHiddenModel().obs;

  RxBool isSecretCodeVisible = false.obs;
  RxBool isGameUnlocked = false.obs;
  RxInt gestureProgress = 0.obs;
  RxList<Offset> gestureSequence = <Offset>[].obs;
  
  // 预定义的正确手势序列（相对坐标）
  final List<Offset> correctGestureSequence = [
    Offset(0.2, 0.3), // 左上
    Offset(0.8, 0.3), // 右上
    Offset(0.5, 0.5), // 中心
    Offset(0.2, 0.7), // 左下
    Offset(0.8, 0.7), // 右下
  ];
  
  // 预定义的正确密码
  final String correctSecretCode = "GAME2024";
  
  Timer? _gestureResetTimer;

  @override
  void onInit() {
    super.onInit();
    _checkIfAlreadyUnlocked();
  }

  @override
  void onClose() {
    secretCodeController.dispose();
    _gestureResetTimer?.cancel();
    super.onClose();
  }

  /// 检查是否已经解锁过
  void _checkIfAlreadyUnlocked() {
    // 检查本地存储是否已经解锁过
    // 这里可以使用 SharedPreferences 或其他持久化存储
    // final isUnlocked = GetStorage().read('ios_game_unlocked') ?? false;
    // isGameUnlocked.value = isUnlocked;
  }

  /// 切换密码可见性
  void toggleSecretCodeVisibility() {
    isSecretCodeVisible.value = !isSecretCodeVisible.value;
  }

  /// 验证特殊代码
  void onVerifySecretCode() {
    final inputCode = secretCodeController.text.trim().toUpperCase();
    
    if (inputCode.isEmpty) {
      Get.snackbar(
        '提示',
        '请输入特殊代码',
        backgroundColor: appTheme.warningColor,
        colorText: appTheme.whiteA700,
        duration: Duration(seconds: 2),
      );
      return;
    }

    if (inputCode == correctSecretCode) {
      _unlockGame('特殊代码验证成功');
    } else {
      Get.snackbar(
        '验证失败',
        '特殊代码不正确，请重试',
        backgroundColor: appTheme.errorColor,
        colorText: appTheme.whiteA700,
        duration: Duration(seconds: 2),
      );
      
      // 清空输入框
      secretCodeController.clear();
    }
  }

  /// 处理手势点击
  void onGestureTap(TapDownDetails details) {
    final RenderBox renderBox = Get.context!.findRenderObject() as RenderBox;
    final localPosition = details.localPosition;
    
    // 转换为相对坐标
    final relativeX = localPosition.dx / renderBox.size.width;
    final relativeY = localPosition.dy / renderBox.size.height;
    final relativePosition = Offset(relativeX, relativeY);
    
    // 检查是否接近正确的手势点
    final currentStep = gestureProgress.value;
    if (currentStep < correctGestureSequence.length) {
      final targetPosition = correctGestureSequence[currentStep];
      final distance = (relativePosition - targetPosition).distance;
      
      // 允许一定的误差范围
      if (distance < 0.15) {
        gestureProgress.value++;
        gestureSequence.add(relativePosition);
        
        Get.snackbar(
          '手势进度',
          '第${gestureProgress.value}步完成',
          backgroundColor: appTheme.successColor,
          colorText: appTheme.whiteA700,
          duration: Duration(seconds: 1),
        );
        
        // 检查是否完成所有手势
        if (gestureProgress.value >= correctGestureSequence.length) {
          _unlockGame('手势验证成功');
        }
      } else {
        // 手势错误，重置进度
        _resetGestureProgress();
        
        Get.snackbar(
          '手势错误',
          '请重新开始手势序列',
          backgroundColor: appTheme.errorColor,
          colorText: appTheme.whiteA700,
          duration: Duration(seconds: 2),
        );
      }
    }
    
    // 设置自动重置定时器
    _gestureResetTimer?.cancel();
    _gestureResetTimer = Timer(Duration(seconds: 5), () {
      if (gestureProgress.value > 0 && gestureProgress.value < correctGestureSequence.length) {
        _resetGestureProgress();
      }
    });
  }

  /// 重置手势进度
  void _resetGestureProgress() {
    gestureProgress.value = 0;
    gestureSequence.clear();
    _gestureResetTimer?.cancel();
  }

  /// 解锁游戏
  void _unlockGame(String method) {
    isGameUnlocked.value = true;
    
    // 保存解锁状态到本地存储
    // GetStorage().write('ios_game_unlocked', true);
    
    Get.snackbar(
      '解锁成功',
      '$method，游戏已解锁',
      backgroundColor: appTheme.successColor,
      colorText: appTheme.whiteA700,
      duration: Duration(seconds: 3),
    );
    
    // 记录解锁日志
    _logUnlockEvent(method);
  }

  /// 记录解锁事件
  void _logUnlockEvent(String method) {
    // 这里可以添加分析统计代码
    print('iOS Game Unlocked: $method at ${DateTime.now()}');
  }

  /// 进入游戏
  void onEnterGame() {
    if (!isGameUnlocked.value) {
      Get.snackbar(
        '提示',
        '请先完成验证以解锁游戏',
        backgroundColor: appTheme.warningColor,
        colorText: appTheme.whiteA700,
        duration: Duration(seconds: 2),
      );
      return;
    }

    // 导航到游戏主界面
    Get.back(result: true);
    
    // 可以导航到具体的游戏页面
    // Get.toNamed(AppRoutes.gamingCasinoScreen);
    
    Get.snackbar(
      '欢迎',
      '正在进入游戏...',
      backgroundColor: appTheme.primaryColor,
      colorText: appTheme.whiteA700,
      duration: Duration(seconds: 2),
    );
  }

  /// 返回首页
  void onBackToHome() {
    Get.back(result: false);
    
    // 可以导航到首页
    // Get.offAllNamed(AppRoutes.homeScreen);
  }

  /// 显示iOS游戏入口隐藏界面
  static Future<bool?> showIosGameEntryScreen() async {
    return await Get.to<bool>(
      () => IosGameEntryHiddenScreen(),
      binding: IosGameEntryHiddenBinding(),
      transition: Transition.fadeIn,
      duration: Duration(milliseconds: 300),
    );
  }

  /// 检查是否是iOS设备
  static bool isIOSDevice() {
    // 在实际项目中，这里应该检查平台
    // return Platform.isIOS;
    return true; // 临时返回true用于演示
  }

  /// 生成随机验证码（管理员功能）
  static String generateSecretCode() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = Random();
    return String.fromCharCodes(
      Iterable.generate(8, (_) => chars.codeUnitAt(random.nextInt(chars.length))),
    );
  }
}