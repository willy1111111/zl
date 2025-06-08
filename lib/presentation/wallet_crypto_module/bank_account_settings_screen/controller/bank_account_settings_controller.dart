import '../../../core/app_export.dart';
import '../models/bank_account_settings_model.dart';
import '../models/bank_card_item_model.dart';

class BankAccountSettingsController extends GetxController {
  Rx<BankAccountSettingsModel> bankAccountSettingsModel =
      BankAccountSettingsModel().obs;
  RxList<BankCardItemModel> bankCards = <BankCardItemModel>[].obs;
  RxInt selectedTabIndex = 1.obs;

  @override
  void onInit() {
    super.onInit();
    bankAccountSettingsModel.value = BankAccountSettingsModel();
    _initializeBankCards();
  }

  void _initializeBankCards() {
    bankCards.value = [
      BankCardItemModel(
        cardType: 'USDT(TRC20)'.obs,
        cardNumber: 'TP****LfXH'.obs,
        cardHolderName: null,
        date: '2025-01-03'.obs,
        iconPath: ImageConstant.imgGroup2131329901.obs,
        gradientType: 1.obs,
        isCapitalized: true.obs,
      ),
      BankCardItemModel(
        cardType: 'PIX-MOBILE'.obs,
        cardNumber: '94****3930'.obs,
        cardHolderName: 'JACK MDDEEOD'.obs,
        date: '2025-01-03'.obs,
        iconPath: ImageConstant.imgVectorAmberA400.obs,
        gradientType: 2.obs,
        isCapitalized: false.obs,
      ),
      BankCardItemModel(
        cardType: 'pay maya'.obs,
        cardNumber: '94****3930'.obs,
        cardHolderName: 'JACK MDDEEOD'.obs,
        date: '2025-01-03'.obs,
        iconPath: ImageConstant.imgVectorAmberA400.obs,
        gradientType: 3.obs,
        isCapitalized: true.obs,
      ),
      BankCardItemModel(
        cardType: null,
        cardNumber: null,
        cardHolderName: null,
        date: null,
        iconPath: null,
        gradientType: 4.obs,
        isCapitalized: false.obs,
      ),
      BankCardItemModel(
        cardType: null,
        cardNumber: null,
        cardHolderName: null,
        date: null,
        iconPath: null,
        gradientType: 5.obs,
        isCapitalized: false.obs,
      ),
    ];
  }

  void onTabChanged(int index) {
    selectedTabIndex.value = index;
  }

  void onAddBankAccountPressed() {
    // Handle add bank account button press
    print('Add Bank Account pressed');
  }
}
