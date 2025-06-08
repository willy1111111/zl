import 'package:flutter/material.dart';

/// This class is used in the [IosGameEntryHiddenScreen] screen with GetX.
/// It defines the data model for iOS game entry hidden functionality.
class IosGameEntryHiddenModel {
  /// 特殊代码
  Rx<String>? secretCode;
  
  /// 是否显示密码
  Rx<bool>? isSecretCodeVisible;
  
  /// 游戏是否已解锁
  Rx<bool>? isGameUnlocked;
  
  /// 手势进度
  Rx<int>? gestureProgress;
  
  /// 最大手势步数
  Rx<int>? maxGestureSteps;
  
  /// 手势序列
  RxList<Offset>? gestureSequence;
  
  /// 解锁方式
  Rx<String>? unlockMethod;
  
  /// 解锁时间
  Rx<DateTime>? unlockTime;
  
  /// 尝试次数
  Rx<int>? attemptCount;
  
  /// 最大尝试次数
  Rx<int>? maxAttempts;
  
  /// 是否已达到最大尝试次数
  Rx<bool>? isMaxAttemptsReached;
  
  /// 错误消息
  Rx<String>? errorMessage;
  
  /// 提示消息
  Rx<String>? hintMessage;

  IosGameEntryHiddenModel({
    this.secretCode,
    this.isSecretCodeVisible,
    this.isGameUnlocked,
    this.gestureProgress,
    this.maxGestureSteps,
    this.gestureSequence,
    this.unlockMethod,
    this.unlockTime,
    this.attemptCount,
    this.maxAttempts,
    this.isMaxAttemptsReached,
    this.errorMessage,
    this.hintMessage,
  }) {
    secretCode = secretCode ?? ''.obs;
    isSecretCodeVisible = isSecretCodeVisible ?? false.obs;
    isGameUnlocked = isGameUnlocked ?? false.obs;
    gestureProgress = gestureProgress ?? 0.obs;
    maxGestureSteps = maxGestureSteps ?? 5.obs;
    gestureSequence = gestureSequence ?? <Offset>[].obs;
    unlockMethod = unlockMethod ?? ''.obs;
    unlockTime = unlockTime ?? DateTime.now().obs;
    attemptCount = attemptCount ?? 0.obs;
    maxAttempts = maxAttempts ?? 5.obs;
    isMaxAttemptsReached = isMaxAttemptsReached ?? false.obs;
    errorMessage = errorMessage ?? ''.obs;
    hintMessage = hintMessage ?? ''.obs;
  }

  IosGameEntryHiddenModel.fromJson(Map<String, dynamic> json) {
    secretCode = (json['secretCode'] as String?)?.obs ?? ''.obs;
    isSecretCodeVisible = (json['isSecretCodeVisible'] as bool?)?.obs ?? false.obs;
    isGameUnlocked = (json['isGameUnlocked'] as bool?)?.obs ?? false.obs;
    gestureProgress = (json['gestureProgress'] as int?)?.obs ?? 0.obs;
    maxGestureSteps = (json['maxGestureSteps'] as int?)?.obs ?? 5.obs;
    
    // 处理手势序列
    if (json['gestureSequence'] != null) {
      final List<dynamic> gestureList = json['gestureSequence'] as List<dynamic>;
      final List<Offset> offsets = gestureList.map((item) {
        final Map<String, dynamic> offsetMap = item as Map<String, dynamic>;
        return Offset(
          (offsetMap['dx'] as num).toDouble(),
          (offsetMap['dy'] as num).toDouble(),
        );
      }).toList();
      gestureSequence = offsets.obs;
    } else {
      gestureSequence = <Offset>[].obs;
    }
    
    unlockMethod = (json['unlockMethod'] as String?)?.obs ?? ''.obs;
    unlockTime = (json['unlockTime'] != null 
        ? DateTime.parse(json['unlockTime'] as String) 
        : DateTime.now()).obs;
    attemptCount = (json['attemptCount'] as int?)?.obs ?? 0.obs;
    maxAttempts = (json['maxAttempts'] as int?)?.obs ?? 5.obs;
    isMaxAttemptsReached = (json['isMaxAttemptsReached'] as bool?)?.obs ?? false.obs;
    errorMessage = (json['errorMessage'] as String?)?.obs ?? ''.obs;
    hintMessage = (json['hintMessage'] as String?)?.obs ?? ''.obs;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['secretCode'] = secretCode?.value;
    data['isSecretCodeVisible'] = isSecretCodeVisible?.value;
    data['isGameUnlocked'] = isGameUnlocked?.value;
    data['gestureProgress'] = gestureProgress?.value;
    data['maxGestureSteps'] = maxGestureSteps?.value;
    
    // 处理手势序列
    if (gestureSequence?.value != null) {
      data['gestureSequence'] = gestureSequence!.value.map((offset) => {
        'dx': offset.dx,
        'dy': offset.dy,
      }).toList();
    }
    
    data['unlockMethod'] = unlockMethod?.value;
    data['unlockTime'] = unlockTime?.value.toIso8601String();
    data['attemptCount'] = attemptCount?.value;
    data['maxAttempts'] = maxAttempts?.value;
    data['isMaxAttemptsReached'] = isMaxAttemptsReached?.value;
    data['errorMessage'] = errorMessage?.value;
    data['hintMessage'] = hintMessage?.value;
    return data;
  }

  /// 重置模型数据
  void reset() {
    secretCode?.value = '';
    isSecretCodeVisible?.value = false;
    isGameUnlocked?.value = false;
    gestureProgress?.value = 0;
    gestureSequence?.clear();
    unlockMethod?.value = '';
    unlockTime?.value = DateTime.now();
    attemptCount?.value = 0;
    isMaxAttemptsReached?.value = false;
    errorMessage?.value = '';
    hintMessage?.value = '';
  }

  /// 增加尝试次数
  void incrementAttemptCount() {
    attemptCount?.value = (attemptCount?.value ?? 0) + 1;
    if ((attemptCount?.value ?? 0) >= (maxAttempts?.value ?? 5)) {
      isMaxAttemptsReached?.value = true;
    }
  }

  /// 检查是否可以继续尝试
  bool canAttempt() {
    return !(isMaxAttemptsReached?.value ?? false);
  }

  /// 获取剩余尝试次数
  int getRemainingAttempts() {
    final current = attemptCount?.value ?? 0;
    final max = maxAttempts?.value ?? 5;
    return max - current;
  }
}