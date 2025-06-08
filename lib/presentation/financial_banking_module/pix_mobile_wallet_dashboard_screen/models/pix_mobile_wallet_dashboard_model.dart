import 'package:get/get.dart';
import '../../../core/app_export.dart';

class PixMobileWalletDashboardModel {
  Rx<String>? title;
  Rx<String>? balanceAmount;

  PixMobileWalletDashboardModel({
    this.title,
    this.balanceAmount,
  });
}
