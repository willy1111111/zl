import '../../../core/app_export.dart';
import '../models/amount_button_model.dart';
import '../models/bank_selection_model.dart';
import '../models/payment_method_model.dart';
import '../models/wallet_deposit_model.dart';

class WalletDepositController extends GetxController {
  WalletDepositModel walletDepositModel = WalletDepositModel();

  RxList<PaymentMethodModel> paymentMethods = <PaymentMethodModel>[].obs;
  RxList<PaymentMethodModel> secondRowPaymentMethods =
      <PaymentMethodModel>[].obs;
  RxList<BankSelectionModel> bankOptions = <BankSelectionModel>[].obs;
  RxList<AmountButtonModel> firstRowAmounts = <AmountButtonModel>[].obs;
  RxList<AmountButtonModel> secondRowAmounts = <AmountButtonModel>[].obs;

  Rx<String>? depositAmount = ''.obs;
  RxInt selectedPaymentIndex = (-1).obs;
  RxInt selectedSecondRowPaymentIndex = (-1).obs;
  RxInt selectedBankIndex = 1.obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    paymentMethods.value = [
      PaymentMethodModel(
        iconPath: ImageConstant.img1336x36.obs,
        name: 'GCash'.obs,
        isSelected: false.obs,
      ),
      PaymentMethodModel(
        iconPath: ImageConstant.imgImage.obs,
        name: 'PayMaya'.obs,
        isSelected: false.obs,
      ),
      PaymentMethodModel(
        iconPath: ImageConstant.imgImage36x36.obs,
        name: 'GrabPay'.obs,
        isSelected: false.obs,
      ),
      PaymentMethodModel(
        iconPath: ImageConstant.imgImage1.obs,
        name: 'GoTyme'.obs,
        isSelected: false.obs,
      ),
    ];

    secondRowPaymentMethods.value = [
      PaymentMethodModel(
        iconPath: ImageConstant.img202305101417071.obs,
        name: 'online Banking'.obs,
        isSelected: false.obs,
      ),
      PaymentMethodModel(
        iconPath: ImageConstant.imgGroup1321314728.obs,
        name: 'QR Ph'.obs,
        isSelected: false.obs,
      ),
      PaymentMethodModel(
        iconPath: ImageConstant.imgUstd.obs,
        name: 'USTD'.obs,
        isSelected: true.obs,
        hasCheckIcon: true.obs,
        hasWhiteBackground: true.obs,
        isTextWhite: true.obs,
        hasBorder: true.obs,
      ),
    ];

    bankOptions.value = [
      BankSelectionModel(
        name: 'USDT-AS TRC20'.obs,
        isSelected: false.obs,
      ),
      BankSelectionModel(
        name: 'USDT-AS ERC20'.obs,
        isSelected: true.obs,
        hasCheckIcon: true.obs,
      ),
    ];

    firstRowAmounts.value = [
      AmountButtonModel(amount: '20'.obs),
      AmountButtonModel(amount: '40'.obs),
      AmountButtonModel(amount: '100'.obs),
      AmountButtonModel(amount: '200'.obs),
    ];

    secondRowAmounts.value = [
      AmountButtonModel(
        amount: '400'.obs,
        bonus: '+5%Bonus'.obs,
      ),
      AmountButtonModel(
        amount: '1000'.obs,
        bonus: '+5%Bonus'.obs,
        hasHotBadge: true.obs,
      ),
      AmountButtonModel(
        amount: '2000'.obs,
        bonus: '+20%Bonus'.obs,
        hasHotBadge: true.obs,
      ),
      AmountButtonModel(amount: '50000'.obs),
    ];
  }

  void selectPaymentMethod(int index) {
    for (int i = 0; i < paymentMethods.length; i++) {
      paymentMethods[i].isSelected?.value = i == index;
    }

    // Clear second row selection
    for (int i = 0; i < secondRowPaymentMethods.length; i++) {
      if (i != 2) {
        // Keep USTD selected
        secondRowPaymentMethods[i].isSelected?.value = false;
      }
    }

    selectedPaymentIndex.value = index;
    selectedSecondRowPaymentIndex.value = -1;
  }

  void selectSecondRowPaymentMethod(int index) {
    for (int i = 0; i < secondRowPaymentMethods.length; i++) {
      secondRowPaymentMethods[i].isSelected?.value = i == index;
    }

    // Clear first row selection
    for (int i = 0; i < paymentMethods.length; i++) {
      paymentMethods[i].isSelected?.value = false;
    }

    selectedSecondRowPaymentIndex.value = index;
    selectedPaymentIndex.value = -1;
  }

  void selectBank(int index) {
    for (int i = 0; i < bankOptions.length; i++) {
      bankOptions[i].isSelected?.value = i == index;
    }
    selectedBankIndex.value = index;
  }

  void selectAmount(String amount) {
    depositAmount?.value = amount;
  }

  void onBalancePressed() {
    // Handle balance tap
  }

  void onDepositPressed() {
    Get.toNamed(AppRoutes.depositConfirmationScreen);
  }

  void onDepositRecordPressed() {
    Get.toNamed(AppRoutes.depositRecordListScreen);
  }
}
