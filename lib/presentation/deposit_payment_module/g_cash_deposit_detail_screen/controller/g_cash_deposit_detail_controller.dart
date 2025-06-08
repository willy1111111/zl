import '../models/g_cash_deposit_detail_model.dart';
import '../../../core/app_export.dart';

class GCashDepositDetailController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<GCashDepositDetailModel?> depositDetailModel =
      Rx<GCashDepositDetailModel?>(null);

  @override
  void onInit() {
    super.onInit();
    depositDetailModel.value = GCashDepositDetailModel();
  }

  void copyAmount() {
    Get.snackbar(
      'Copied',
      'Amount copied to clipboard',
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.colorFFFFFF,
      duration: Duration(seconds: 2),
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
