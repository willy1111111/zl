import '../../../core/app_export.dart';

class GCashDepositRejectionDetailModel {
  Rx<String>? depositAmount;
  Rx<String>? transactionStatus;
  Rx<String>? submissionTime;
  Rx<String>? depositMethod;
  Rx<String>? paymentChannel;
  Rx<String>? submitAmount;
  Rx<String>? orderCode;
  Rx<String>? recordedTime;
  Rx<String>? handlingFee;
  Rx<String>? noticeMessage;

  GCashDepositRejectionDetailModel({
    this.depositAmount,
    this.transactionStatus,
    this.submissionTime,
    this.depositMethod,
    this.paymentChannel,
    this.submitAmount,
    this.orderCode,
    this.recordedTime,
    this.handlingFee,
    this.noticeMessage,
  });
}
