import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class GamingAppDownloadModel {
  Rx<String>? balance;
  Rx<String>? jackpotAmount;
  Rx<bool>? isModalVisible;

  GamingAppDownloadModel({
    this.balance,
    this.jackpotAmount,
    this.isModalVisible,
  }) {
    balance = balance ?? 'R\$1980.00'.obs;
    jackpotAmount = jackpotAmount ?? '14,091,688.88'.obs;
    isModalVisible = isModalVisible ?? true.obs;
  }
}
