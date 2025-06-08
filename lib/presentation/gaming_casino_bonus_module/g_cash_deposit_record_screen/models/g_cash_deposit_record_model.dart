import '../../../core/app_export.dart';

class GCashDepositRecordModel {
  Rx<String>? amount;
  Rx<String>? status;
  Rx<String>? submissionTime;
  Rx<String>? depositMethod;
  Rx<String>? paymentChannel;
  Rx<String>? orderCode;
  Rx<String>? recordedTime;
  Rx<String>? handlingFee;

  GCashDepositRecordModel({
    this.amount,
    this.status,
    this.submissionTime,
    this.depositMethod,
    this.paymentChannel,
    this.orderCode,
    this.recordedTime,
    this.handlingFee,
  });
}
