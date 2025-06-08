import 'package:get/get.dart';
import '../models/account_record_model.dart';
import '../../../core/app_export.dart';

class AccountRecordController extends GetxController {
  Rx<AccountRecordModel?> accountRecordModel = Rx<AccountRecordModel?>(null);

  RxString? dateRange = '2023-05-11~2023-05-14'.obs;
  RxString? selectedDepositsFilter = 'Deposits'.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    accountRecordModel.value = AccountRecordModel();
  }

  void onDepositsDropdownTap() {
    // Handle deposits dropdown selection
    print('Deposits dropdown tapped');
  }

  void onDatePickerTap() {
    // Handle date picker tap
    print('Date picker tapped');
  }

  @override
  void onClose() {
    super.onClose();
  }
}
