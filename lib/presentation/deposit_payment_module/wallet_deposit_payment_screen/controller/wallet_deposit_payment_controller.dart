import '../../../core/app_export.dart';
import '../models/amount_option_model.dart';
import '../models/bank_option_model.dart';
import '../models/payment_method_model.dart';
import '../models/wallet_deposit_payment_model.dart';

class WalletDepositPaymentController extends GetxController {
  Rx<WalletDepositPaymentModel> walletDepositPaymentModel =
      WalletDepositPaymentModel().obs;

  RxList<PaymentMethodModel> paymentMethods = <PaymentMethodModel>[].obs;
  RxList<BankOptionModel> bankOptions = <BankOptionModel>[].obs;
  RxList<AmountOptionModel> amountOptions = <AmountOptionModel>[].obs;

  RxInt selectedPaymentMethodIndex = (-1).obs;
  RxInt selectedBankOptionIndex = 1.obs;
  RxInt selectedAmountOptionIndex = 6.obs;
  Rx<int?> selectedAmount = 20000.obs;

  RxBool activityParticipationRewards = true.obs;
  RxBool nonParticipationRewards = false.obs;

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
        hasWhiteBackground: true.obs,
      ),
    ];

    bankOptions.value = [
      BankOptionModel(
        name: 'USDT-AS TRC20'.obs,
        isSelected: false.obs,
      ),
      BankOptionModel(
        name: 'USDT-AS ERC20'.obs,
        isSelected: true.obs,
      ),
    ];

    amountOptions.value = [
      AmountOptionModel(
        amount: 20.obs,
        bonusPercentage: null,
        isHot: false.obs,
        isSelected: false.obs,
      ),
      AmountOptionModel(
        amount: 40.obs,
        bonusPercentage: null,
        isHot: false.obs,
        isSelected: false.obs,
      ),
      AmountOptionModel(
        amount: 100.obs,
        bonusPercentage: null,
        isHot: false.obs,
        isSelected: false.obs,
      ),
      AmountOptionModel(
        amount: 200.obs,
        bonusPercentage: null,
        isHot: false.obs,
        isSelected: false.obs,
      ),
      AmountOptionModel(
        amount: 400.obs,
        bonusPercentage: 5.obs,
        isHot: false.obs,
        isSelected: false.obs,
      ),
      AmountOptionModel(
        amount: 1000.obs,
        bonusPercentage: 5.obs,
        isHot: true.obs,
        isSelected: false.obs,
      ),
      AmountOptionModel(
        amount: 2000.obs,
        bonusPercentage: 20.obs,
        isHot: true.obs,
        isSelected: true.obs,
      ),
      AmountOptionModel(
        amount: 50000.obs,
        bonusPercentage: null,
        isHot: false.obs,
        isSelected: false.obs,
      ),
    ];

    selectedAmount.value = 20000;
  }

  void selectPaymentMethod(int index) {
    for (int i = 0; i < paymentMethods.length; i++) {
      paymentMethods[i].isSelected?.value = i == index;
    }
    selectedPaymentMethodIndex.value = index;
    paymentMethods.refresh();
  }

  void selectBankOption(int index) {
    for (int i = 0; i < bankOptions.length; i++) {
      bankOptions[i].isSelected?.value = i == index;
    }
    selectedBankOptionIndex.value = index;
    bankOptions.refresh();
  }

  void selectAmountOption(int index) {
    for (int i = 0; i < amountOptions.length; i++) {
      amountOptions[i].isSelected?.value = i == index;
    }
    selectedAmountOptionIndex.value = index;
    selectedAmount.value = amountOptions[index].amount?.value;
    amountOptions.refresh();
  }

  void toggleActivityParticipationRewards() {
    activityParticipationRewards.value = !activityParticipationRewards.value;
    if (activityParticipationRewards.value) {
      nonParticipationRewards.value = false;
    }
  }

  void toggleNonParticipationRewards() {
    nonParticipationRewards.value = !nonParticipationRewards.value;
    if (nonParticipationRewards.value) {
      activityParticipationRewards.value = false;
    }
  }

  void onDepositPressed() {
    Get.toNamed(AppRoutes.depositConfirmationScreen);
  }

  void onDepositRecordPressed() {
    Get.toNamed(AppRoutes.depositRecordListScreen);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
