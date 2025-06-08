import 'package:get/get.dart';
import '../models/g_cash_deposit_record_model.dart';
import '../../../core/app_export.dart';

class GCashDepositRecordController extends GetxController {
  Rx<GCashDepositRecordModel?> depositRecord =
      Rx<GCashDepositRecordModel?>(null);

  @override
  void onInit() {
    super.onInit();
    _initializeDepositRecord();
  }

  void _initializeDepositRecord() {
    depositRecord.value = GCashDepositRecordModel(
      amount: '150.00'.obs,
      status: 'Credited'.obs,
      submissionTime: '2023-04-23  11:16:32'.obs,
      depositMethod: 'GCash'.obs,
      paymentChannel: 'GCash-xxxx'.obs,
      orderCode: '000000000'.obs,
      recordedTime: '2023-04-23  11:16:32'.obs,
      handlingFee: '1.00'.obs,
    );
  }

  void copyAmount() {
    // Handle copy functionality
    Get.snackbar(
      'Copied',
      'Amount copied to clipboard',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
