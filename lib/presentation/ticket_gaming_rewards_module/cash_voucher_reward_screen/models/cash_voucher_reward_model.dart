import 'package:get/get.dart';
import '../../../core/app_export.dart';

class CashVoucherRewardModel {
  Rx<String>? balanceAmount;
  Rx<String>? voucherAmount;
  Rx<bool>? showVoucherDialog;

  CashVoucherRewardModel({
    this.balanceAmount,
    this.voucherAmount,
    this.showVoucherDialog,
  });

  CashVoucherRewardModel.fromJson(Map<String, dynamic> json) {
    balanceAmount = (json['balanceAmount'] as String?)?.obs;
    voucherAmount = (json['voucherAmount'] as String?)?.obs;
    showVoucherDialog = (json['showVoucherDialog'] as bool?)?.obs;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data['balanceAmount'] = balanceAmount?.value;
    data['voucherAmount'] = voucherAmount?.value;
    data['showVoucherDialog'] = showVoucherDialog?.value;
    return data;
  }
}
