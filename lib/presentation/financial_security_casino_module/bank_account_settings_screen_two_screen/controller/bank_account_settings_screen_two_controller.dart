import '../models/bank_account_settings_screen_two_model.dart';
import '../models/bank_account_model.dart';
import '../../../core/app_export.dart';

class BankAccountSettingsScreenTwoController extends GetxController {
  Rx<BankAccountSettingsScreenTwoModel> bankAccountSettingsScreenTwoModelObj =
      BankAccountSettingsScreenTwoModel().obs;

  RxList<BankAccountModel> bankAccounts = <BankAccountModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    bankAccounts.value = [
      BankAccountModel(
        account: '07447461598'.obs,
        type: 'BrazilPXI'.obs,
        pixType: 'CPF'.obs,
        name: 'Lucas Martins Nunes'.obs,
        remark: ''.obs,
      ),
      BankAccountModel(
        account: '07447461598'.obs,
        type: 'BrazilPXI'.obs,
        pixType: 'CPF'.obs,
        name: 'Lucas Martins Nunes'.obs,
        remark: ''.obs,
      ),
    ];
  }

  void onTabChanged(int index) {
    // Handle tab navigation based on index
    switch (index) {
      case 0:
        // Navigate to General settings
        break;
      case 1:
        // Already on Bank Account tab
        break;
      case 2:
        // Navigate to Security settings
        break;
    }
  }

  void onCancelPressed() {
    Get.back();
  }

  void onEditAccountPressed(int index) {
    // Handle edit account functionality
    Get.snackbar(
      'Edit Account',
      'Edit account functionality would be implemented here',
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.whiteCustom,
    );
  }

  void onAddBankAccountPressed() {
    // Handle add bank account functionality
    Get.snackbar(
      'Add Bank Account',
      'Add Bank Account functionality would be implemented here',
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.whiteCustom,
    );
  }
}
