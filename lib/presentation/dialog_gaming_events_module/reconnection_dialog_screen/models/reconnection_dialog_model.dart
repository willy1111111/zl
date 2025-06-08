/// This class is used in the [ReconnectionDialogScreen] screen with GetX.
/// It defines the data model for reconnection dialog functionality.
class ReconnectionDialogModel {
  /// 连接状态
  Rx<String>? connectionStatus;
  
  /// 是否正在重连
  Rx<bool>? isReconnecting;
  
  /// 重连尝试次数
  Rx<int>? reconnectAttempt;
  
  /// 最大重连次数
  Rx<int>? maxReconnectAttempts;
  
  /// 重连超时时间（秒）
  Rx<int>? reconnectTimeout;
  
  /// 上次连接时间
  Rx<DateTime>? lastConnectionTime;
  
  /// 错误消息
  Rx<String>? errorMessage;
  
  /// 是否显示详细信息
  Rx<bool>? showDetailedInfo;

  ReconnectionDialogModel({
    this.connectionStatus,
    this.isReconnecting,
    this.reconnectAttempt,
    this.maxReconnectAttempts,
    this.reconnectTimeout,
    this.lastConnectionTime,
    this.errorMessage,
    this.showDetailedInfo,
  }) {
    connectionStatus = connectionStatus ?? 'disconnected'.obs;
    isReconnecting = isReconnecting ?? false.obs;
    reconnectAttempt = reconnectAttempt ?? 0.obs;
    maxReconnectAttempts = maxReconnectAttempts ?? 3.obs;
    reconnectTimeout = reconnectTimeout ?? 10.obs;
    lastConnectionTime = lastConnectionTime ?? DateTime.now().obs;
    errorMessage = errorMessage ?? ''.obs;
    showDetailedInfo = showDetailedInfo ?? false.obs;
  }

  ReconnectionDialogModel.fromJson(Map<String, dynamic> json) {
    connectionStatus = (json['connectionStatus'] as String?)?.obs ?? 'disconnected'.obs;
    isReconnecting = (json['isReconnecting'] as bool?)?.obs ?? false.obs;
    reconnectAttempt = (json['reconnectAttempt'] as int?)?.obs ?? 0.obs;
    maxReconnectAttempts = (json['maxReconnectAttempts'] as int?)?.obs ?? 3.obs;
    reconnectTimeout = (json['reconnectTimeout'] as int?)?.obs ?? 10.obs;
    lastConnectionTime = (json['lastConnectionTime'] != null 
        ? DateTime.parse(json['lastConnectionTime'] as String) 
        : DateTime.now()).obs;
    errorMessage = (json['errorMessage'] as String?)?.obs ?? ''.obs;
    showDetailedInfo = (json['showDetailedInfo'] as bool?)?.obs ?? false.obs;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['connectionStatus'] = connectionStatus?.value;
    data['isReconnecting'] = isReconnecting?.value;
    data['reconnectAttempt'] = reconnectAttempt?.value;
    data['maxReconnectAttempts'] = maxReconnectAttempts?.value;
    data['reconnectTimeout'] = reconnectTimeout?.value;
    data['lastConnectionTime'] = lastConnectionTime?.value.toIso8601String();
    data['errorMessage'] = errorMessage?.value;
    data['showDetailedInfo'] = showDetailedInfo?.value;
    return data;
  }
}