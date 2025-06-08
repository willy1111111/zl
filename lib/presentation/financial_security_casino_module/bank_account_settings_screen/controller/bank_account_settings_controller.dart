import 'package:get/get.dart';

import '../../../core/app_export.dart';
import '../models/account_card_model.dart';

class BankAccountSettingsController extends GetxController {
  RxList<AccountCardModel> bankAccounts = <AccountCardModel>[].obs;
  RxInt selectedTabIndex = 1.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeBankAccounts();
  }

  void _initializeBankAccounts() {
    bankAccounts.value = [
      AccountCardModel(
        account: '07447461598'.obs,
        type: 'BrazilPXI'.obs,
        pixType: 'CPF'.obs,
        name: 'Lucas Martins Nunes'.obs,
        remark: ''.obs,
      ),
      AccountCardModel(
        account: '07447461598'.obs,
        type: 'BrazilPXI'.obs,
        pixType: 'CPF'.obs,
        name: 'Lucas Martins Nunes'.obs,
        remark: ''.obs,
      ),
    ];
  }

  void onTabChanged(int index) {
    selectedTabIndex.value = index;
    // Handle tab navigation logic here
    switch (index) {
      case 0:
        // Navigate to General settings
        break;
      case 1:
        // Already on Bank Account
        break;
      case 2:
        // Navigate to Security settings
        break;
    }
  }

  void onAddBankAccountTap() {
    // Handle add bank account navigation
    // Get.toNamed(AppRoutes.addBankAccountScreen);
  }
}
