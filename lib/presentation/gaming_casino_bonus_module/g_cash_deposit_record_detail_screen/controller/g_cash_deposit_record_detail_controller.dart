import 'package:get/get.dart';
import '../models/g_cash_deposit_record_detail_model.dart';
import '../../../core/app_export.dart';

class GCashDepositRecordDetailController extends GetxController {
  GCashDepositRecordDetailModel gCashDepositRecordDetailModel =
      GCashDepositRecordDetailModel();

  Rx<String>? get transactionAmount =>
      gCashDepositRecordDetailModel.transactionAmount;
  Rx<String>? get transactionStatus =>
      gCashDepositRecordDetailModel.transactionStatus;
  Rx<String>? get submissionTime =>
      gCashDepositRecordDetailModel.submissionTime;
  Rx<String>? get depositMethod => gCashDepositRecordDetailModel.depositMethod;
  Rx<String>? get paymentChannel =>
      gCashDepositRecordDetailModel.paymentChannel;
  Rx<String>? get submitAmount => gCashDepositRecordDetailModel.submitAmount;
  Rx<String>? get orderCode => gCashDepositRecordDetailModel.orderCode;
  Rx<String>? get recordedTime => gCashDepositRecordDetailModel.recordedTime;
  Rx<String>? get handlingFee => gCashDepositRecordDetailModel.handlingFee;
  Rx<String>? get noticeMessage => gCashDepositRecordDetailModel.noticeMessage;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    gCashDepositRecordDetailModel.transactionAmount?.value = '150.00';
    gCashDepositRecordDetailModel.transactionStatus?.value = 'Credited';
    gCashDepositRecordDetailModel.submissionTime?.value =
        '2023-04-23  11:16:32';
    gCashDepositRecordDetailModel.depositMethod?.value = 'GCash';
    gCashDepositRecordDetailModel.paymentChannel?.value = 'GCash-xxxx';
    gCashDepositRecordDetailModel.submitAmount?.value = '₱150.00';
    gCashDepositRecordDetailModel.orderCode?.value = '000000000';
    gCashDepositRecordDetailModel.recordedTime?.value = '2023-04-23  11:16:32';
    gCashDepositRecordDetailModel.handlingFee?.value = '₱1.00';
    gCashDepositRecordDetailModel.noticeMessage?.value =
        'Dear, we are unable to transfer your account limitPlease change your WITHDRAWAL account or useother methods to withdraw cash.';
  }

  @override
  void onClose() {
    super.onClose();
  }
}
