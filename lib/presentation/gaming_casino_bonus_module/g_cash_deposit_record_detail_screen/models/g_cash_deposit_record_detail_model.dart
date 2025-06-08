import '../../../core/app_export.dart';

/// This class is used in the [GCashDepositRecordDetailScreen] screen with GetX.

class GCashDepositRecordDetailModel {
  Rx<String>? transactionAmount = '150.00'.obs;
  Rx<String>? transactionStatus = 'Credited'.obs;
  Rx<String>? submissionTime = '2023-04-23  11:16:32'.obs;
  Rx<String>? depositMethod = 'GCash'.obs;
  Rx<String>? paymentChannel = 'GCash-xxxx'.obs;
  Rx<String>? submitAmount = '₱150.00'.obs;
  Rx<String>? orderCode = '000000000'.obs;
  Rx<String>? recordedTime = '2023-04-23  11:16:32'.obs;
  Rx<String>? handlingFee = '₱1.00'.obs;
  Rx<String>? noticeMessage =
      'Dear, we are unable to transfer your account limitPlease change your WITHDRAWAL account or useother methods to withdraw cash.'
          .obs;

  GCashDepositRecordDetailModel();
}
