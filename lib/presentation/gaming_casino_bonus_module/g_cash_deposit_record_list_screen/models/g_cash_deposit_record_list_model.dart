import 'package:get/get.dart';

import '../../../core/app_export.dart';
import './transaction_item_model.dart';

class GCashDepositRecordListModel {
  Rx<String> title = "Deposit Record".obs;
  RxList<TransactionItemModel> transactionList = <TransactionItemModel>[].obs;

  GCashDepositRecordListModel();
}
