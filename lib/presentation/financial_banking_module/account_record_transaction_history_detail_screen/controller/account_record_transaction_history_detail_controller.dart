import '../../../core/app_export.dart';
import '../models/account_record_transaction_history_detail_model.dart';
import '../models/transaction_item_model.dart';

class AccountRecordTransactionHistoryDetailController extends GetxController {
  Rx<AccountRecordTransactionHistoryDetailModel>
      accountRecordTransactionHistoryDetailModel =
      AccountRecordTransactionHistoryDetailModel().obs;

  RxList<TransactionItemModel> transactions = <TransactionItemModel>[].obs;
  RxString selectedFilter = 'Withdrawal'.obs;
  RxString selectedDateRange = '2023-05-11~2023-05-14'.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    accountRecordTransactionHistoryDetailModel.value =
        AccountRecordTransactionHistoryDetailModel();
    loadTransactions();
  }

  void loadTransactions() {
    transactions.value = [
      TransactionItemModel(
        icon: ImageConstant.imgVectorAmberA400.obs,
        title: 'Recharge successful'.obs,
        dateTime: '21:33 2023/06/08'.obs,
        amount: '-100.00'.obs,
        balance: '100.00'.obs,
        type: 'recharge'.obs,
        isWithdrawal: false.obs,
      ),
      TransactionItemModel(
        icon: ImageConstant.imgVectorAmberA400.obs,
        title: 'Recharge successful'.obs,
        dateTime: '21:33 2023/06/08'.obs,
        amount: '-300.00'.obs,
        balance: '100.00'.obs,
        type: 'recharge'.obs,
        isWithdrawal: false.obs,
      ),
      TransactionItemModel(
        icon: ImageConstant.imgVectorAmberA400.obs,
        title: 'Recharge successful'.obs,
        dateTime: '21:33 2023/06/08'.obs,
        amount: '-50.00'.obs,
        balance: '100.00'.obs,
        type: 'recharge'.obs,
        isWithdrawal: false.obs,
      ),
      TransactionItemModel(
        icon: ImageConstant.imgVectorAmberA400.obs,
        title: 'Recharge successful'.obs,
        dateTime: '21:33 2023/06/08'.obs,
        amount: '-300.00'.obs,
        balance: '100.00'.obs,
        type: 'recharge'.obs,
        isWithdrawal: false.obs,
      ),
      TransactionItemModel(
        icon: ImageConstant.imgVectorAmberA400.obs,
        title: 'Withdrawal'.obs,
        dateTime: '21:33 2023/06/08'.obs,
        amount: '-50.00'.obs,
        balance: '100.00'.obs,
        type: 'withdrawal'.obs,
        isWithdrawal: true.obs,
        receivedAmount: '0.8'.obs,
        withdrawalFee: '0.8'.obs,
      ),
    ];
  }

  void onWithdrawalFilterTap() {
    // Handle withdrawal filter dropdown tap
  }

  void onDateRangeFilterTap() {
    // Handle date range filter tap
  }

  void onPreviousPressed() {
    // Handle previous page navigation
  }

  void onNextPressed() {
    // Handle next page navigation
  }

  @override
  void onClose() {
    super.onClose();
  }
}
