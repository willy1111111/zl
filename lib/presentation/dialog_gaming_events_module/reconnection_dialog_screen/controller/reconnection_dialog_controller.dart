import 'dart:async';
import 'dart:io';
import '../../../../../core/app_export.dart';
import '../models/reconnection_dialog_model.dart';

enum ConnectionStatus {
  disconnected,
  connecting,
  connected,
  failed,
}

class ReconnectionDialogController extends GetxController {
  Rx<ReconnectionDialogModel> reconnectionModel =
      ReconnectionDialogModel().obs;

  Rx<ConnectionStatus> connectionStatus = ConnectionStatus.disconnected.obs;
  RxBool isReconnecting = false.obs;
  RxInt reconnectAttempt = 0.obs;
  RxInt maxReconnectAttempts = 3.obs;
  
  Timer? _reconnectTimer;
  Timer? _timeoutTimer;

  @override
  void onInit() {
    super.onInit();
    // 自动开始重连
    Future.delayed(Duration(milliseconds: 500), () {
      onReconnect();
    });
  }

  @override
  void onClose() {
    _reconnectTimer?.cancel();
    _timeoutTimer?.cancel();
    super.onClose();
  }

  /// 获取状态消息
  String getStatusMessage() {
    switch (connectionStatus.value) {
      case ConnectionStatus.disconnected:
        return '网络连接已断开，请检查您的网络设置后重试';
      case ConnectionStatus.connecting:
        return '正在尝试重新连接到服务器...';
      case ConnectionStatus.connected:
        return '网络连接已恢复，您可以继续游戏了';
      case ConnectionStatus.failed:
        return '重连失败，请检查网络设置或稍后再试';
      default:
        return '网络状态未知';
    }
  }

  /// 重新连接
  void onReconnect() async {
    if (isReconnecting.value) return;
    
    isReconnecting.value = true;
    connectionStatus.value = ConnectionStatus.connecting;
    reconnectAttempt.value++;

    try {
      // 设置超时定时器
      _timeoutTimer = Timer(Duration(seconds: 10), () {
        if (isReconnecting.value) {
          _handleReconnectFailure();
        }
      });

      // 模拟网络连接检测
      bool isConnected = await _checkNetworkConnection();
      
      _timeoutTimer?.cancel();
      
      if (isConnected) {
        connectionStatus.value = ConnectionStatus.connected;
        isReconnecting.value = false;
        
        Get.snackbar(
          '连接成功',
          '网络连接已恢复',
          backgroundColor: appTheme.successColor,
          colorText: appTheme.whiteA700,
          duration: Duration(seconds: 2),
        );
        
        // 3秒后自动关闭弹窗
        Future.delayed(Duration(seconds: 3), () {
          if (connectionStatus.value == ConnectionStatus.connected) {
            onContinueGame();
          }
        });
      } else {
        _handleReconnectFailure();
      }
    } catch (e) {
      _timeoutTimer?.cancel();
      _handleReconnectFailure();
    }
  }

  /// 处理重连失败
  void _handleReconnectFailure() {
    isReconnecting.value = false;
    
    if (reconnectAttempt.value < maxReconnectAttempts.value) {
      connectionStatus.value = ConnectionStatus.disconnected;
      
      Get.snackbar(
        '重连失败',
        '第${reconnectAttempt.value}次重连失败，请重试',
        backgroundColor: appTheme.errorColor,
        colorText: appTheme.whiteA700,
        duration: Duration(seconds: 2),
      );
    } else {
      connectionStatus.value = ConnectionStatus.failed;
      
      Get.snackbar(
        '连接失败',
        '已达到最大重连次数，请检查网络设置',
        backgroundColor: appTheme.errorColor,
        colorText: appTheme.whiteA700,
        duration: Duration(seconds: 3),
      );
    }
  }

  /// 检查网络连接
  Future<bool> _checkNetworkConnection() async {
    try {
      // 模拟网络检测延迟
      await Future.delayed(Duration(seconds: 2));
      
      // 实际项目中应该ping服务器或检查网络状态
      // 这里模拟70%的成功率
      final random = DateTime.now().millisecondsSinceEpoch % 10;
      return random < 7;
      
      // 真实的网络检测代码示例：
      // final result = await InternetAddress.lookup('google.com');
      // return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  /// 继续游戏
  void onContinueGame() {
    Get.back(result: true);
  }

  /// 退出游戏
  void onExitGame() {
    Get.back(result: false);
    
    // 可以导航到首页或登录页
    // Get.offAllNamed(AppRoutes.homeScreen);
  }

  /// 显示重连弹窗
  static Future<bool?> showReconnectionDialog() async {
    return await Get.dialog<bool>(
      ReconnectionDialogScreen(),
      barrierDismissible: false,
    );
  }

  /// 重置重连状态
  void resetReconnectionState() {
    reconnectAttempt.value = 0;
    connectionStatus.value = ConnectionStatus.disconnected;
    isReconnecting.value = false;
  }
}