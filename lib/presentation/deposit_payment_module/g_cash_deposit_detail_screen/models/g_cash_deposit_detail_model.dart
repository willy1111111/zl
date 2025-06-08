import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [g_cash_deposit_detail_screen] screen with GetX.

class GCashDepositDetailModel {
  Rx<String>? amount;
  Rx<String>? status;
  Rx<String>? submissionTime;
  Rx<String>? depositMethod;
  Rx<String>? paymentChannel;
  Rx<String>? orderCode;
  Rx<String>? recordedTime;
  Rx<String>? handlingFee;

  GCashDepositDetailModel({
    this.amount,
    this.status,
    this.submissionTime,
    this.depositMethod,
    this.paymentChannel,
    this.orderCode,
    this.recordedTime,
    this.handlingFee,
  }) {
    amount = (amount?.value ?? '150.00')
        .obs; // Modified: Fixed type assignment by accessing value property
    status = (status?.value ?? 'Credited')
        .obs; // Modified: Fixed type assignment by accessing value property
    submissionTime = (submissionTime?.value ?? '2023-04-23  11:16:32')
        .obs; // Modified: Fixed type assignment by accessing value property
    depositMethod = (depositMethod?.value ?? 'GCash')
        .obs; // Modified: Fixed type assignment by accessing value property
    paymentChannel = (paymentChannel?.value ?? 'GCash-xxxx')
        .obs; // Modified: Fixed type assignment by accessing value property
    orderCode = (orderCode?.value ?? '000000000')
        .obs; // Modified: Fixed type assignment by accessing value property
    recordedTime = (recordedTime?.value ?? '2023-04-23  11:16:32')
        .obs; // Modified: Fixed type assignment by accessing value property
    handlingFee = (handlingFee?.value ?? '1.00')
        .obs; // Modified: Fixed type assignment by accessing value property
  }
}
