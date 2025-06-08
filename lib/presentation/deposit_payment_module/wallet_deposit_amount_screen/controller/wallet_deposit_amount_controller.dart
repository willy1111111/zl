import '../../../core/app_export.dart';
import '../models/amount_option_model.dart';
import '../models/deposit_method_model.dart';
import '../models/payment_method_model.dart';
import '../models/wallet_deposit_amount_model.dart';

class WalletDepositAmountController extends GetxController {
  Rx<WalletDepositAmountModel> walletDepositAmountModel =
      WalletDepositAmountModel().obs;

  RxList<DepositMethodModel> depositMethods = <DepositMethodModel>[].obs;
  RxList<PaymentMethodModel> paymentMethods = <PaymentMethodModel>[].obs;
  RxList<AmountOptionModel> amountOptions = <AmountOptionModel>[].obs;

  RxInt selectedDepositMethodIndex = 0.obs;
  RxInt selectedPaymentMethodIndex = 1.obs;
  RxInt selectedAmountIndex = 5.obs;

  Rx<String>? selectedAmount = '400'.obs;
  RxBool isLoading = false.obs;
  RxString currentBalance = '1980.00'.obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    depositMethods.value = [
      DepositMethodModel(
          icon: ImageConstant.img13.obs,
          name: 'Cashpay'.obs,
          isSelected: true.obs),
      DepositMethodModel(
          icon: ImageConstant.imgIntersect1.obs,
          name: 'GCash'.obs,
          isSelected: false.obs),
      DepositMethodModel(
          icon: ImageConstant.img202305101417071.obs,
          name: 'PayMaya'.obs,
          isSelected: false.obs),
      DepositMethodModel(
          icon: ImageConstant.img202305101417071.obs,
          name: 'PayMaya'.obs,
          isSelected: false.obs),
    ];

    paymentMethods.value = [
      PaymentMethodModel(name: 'payment method'.obs, isSelected: false.obs),
      PaymentMethodModel(name: 'payment method'.obs, isSelected: true.obs),
      PaymentMethodModel(name: 'payment method'.obs, isSelected: false.obs),
      PaymentMethodModel(name: 'payment method'.obs, isSelected: false.obs),
      PaymentMethodModel(name: 'payment method'.obs, isSelected: false.obs),
      PaymentMethodModel(name: 'payment method'.obs, isSelected: false.obs),
      PaymentMethodModel(name: 'payment method'.obs, isSelected: false.obs),
      PaymentMethodModel(name: 'payment method'.obs, isSelected: false.obs),
    ];

    amountOptions.value = [
      AmountOptionModel(
          amount: '20'.obs,
          bonus: ''.obs,
          isSelected: false.obs,
          hasHotBadge: false.obs),
      AmountOptionModel(
          amount: '40'.obs,
          bonus: ''.obs,
          isSelected: false.obs,
          hasHotBadge: false.obs),
      AmountOptionModel(
          amount: '100'.obs,
          bonus: ''.obs,
          isSelected: false.obs,
          hasHotBadge: false.obs),
      AmountOptionModel(
          amount: '200'.obs,
          bonus: ''.obs,
          isSelected: false.obs,
          hasHotBadge: false.obs),
      AmountOptionModel(
          amount: '400'.obs,
          bonus: '+5%Bonus'.obs,
          isSelected: false.obs,
          hasHotBadge: false.obs),
      AmountOptionModel(
          amount: '1000'.obs,
          bonus: '+5%Bonus'.obs,
          isSelected: true.obs,
          hasHotBadge: true.obs),
      AmountOptionModel(
          amount: '2000'.obs,
          bonus: '+500%Bonus'.obs,
          isSelected: false.obs,
          hasHotBadge: true.obs),
      AmountOptionModel(
          amount: '500000'.obs,
          bonus: ''.obs,
          isSelected: false.obs,
          hasHotBadge: false.obs),
    ];

    selectedAmount!.value =
        amountOptions[selectedAmountIndex.value].amount?.value ??
            '0'; // Modified: Added null coalescing operator
  }

  void selectDepositMethod(int index) {
    for (int i = 0; i < depositMethods.length; i++) {
      depositMethods[i].isSelected?.value = (i == index);
    }
    selectedDepositMethodIndex.value = index;
    depositMethods.refresh();
  }

  void selectPaymentMethod(int index) {
    for (int i = 0; i < paymentMethods.length; i++) {
      paymentMethods[i].isSelected?.value = (i == index);
    }
    selectedPaymentMethodIndex.value = index;
    paymentMethods.refresh();
  }

  void selectAmount(int index) {
    for (int i = 0; i < amountOptions.length; i++) {
      amountOptions[i].isSelected?.value = (i == index);
    }
    selectedAmountIndex.value = index;
    selectedAmount!.value = amountOptions[index].amount?.value ??
        '0'; // Modified: Added null coalescing operator
    amountOptions.refresh();
  }

  void onBalancePressed() {
    // Handle balance tap action
    print('Balance tapped');
  }

  void onDepositPressed() {
    isLoading.value = true;

    Future.delayed(Duration(seconds: 3), () {
      isLoading.value = false;
      Get.toNamed(AppRoutes.walletDepositConfirmationScreen);
    });
  }

  void onDepositRecordPressed() {
    Get.toNamed(AppRoutes.depositRecordListScreen);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
