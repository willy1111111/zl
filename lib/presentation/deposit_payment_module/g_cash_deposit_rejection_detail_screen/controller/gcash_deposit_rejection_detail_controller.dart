import 'package:get/get.dart';
import '../models/gcash_deposit_rejection_detail_model.dart';
import '../../../core/app_export.dart';

class GCashDepositRejectionDetailController extends GetxController {
  Rx<GCashDepositRejectionDetailModel> gCashDepositRejectionDetailModel =
      GCashDepositRejectionDetailModel().obs;

  RxString depositAmount = '150.00'.obs;
  RxString transactionStatus = 'Credited'.obs;
  RxString submissionTime = '2023-04-23  11:16:32'.obs;
  RxString depositMethod = 'GCash'.obs;
  RxString paymentChannel = 'GCash-xxxx'.obs;
  RxString submitAmount = '₱150.00'.obs;
  RxString orderCode = '000000000'.obs;
  RxString recordedTime = '2023-04-23  11:16:32'.obs;
  RxString handlingFee = '₱1.00'.obs;
  RxString noticeMessage =
      'Dear, we are unable to transfer your account limitPlease change your WITHDRAWAL account or useother methods to withdraw cash.'
          .obs;

  @override
  void onInit() {
    super.onInit();
    gCashDepositRejectionDetailModel.value = GCashDepositRejectionDetailModel(
      depositAmount: depositAmount.value.obs,
      transactionStatus: transactionStatus.value.obs,
      submissionTime: submissionTime.value.obs,
      depositMethod: depositMethod.value.obs,
      paymentChannel: paymentChannel.value.obs,
      submitAmount: submitAmount.value.obs,
      orderCode: orderCode.value.obs,
      recordedTime: recordedTime.value.obs,
      handlingFee: handlingFee.value.obs,
      noticeMessage: noticeMessage.value.obs,
    );
  }
}
