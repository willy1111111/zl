import 'package:get/get.dart';
import '../../../core/app_export.dart';
import '../widgets/transaction_item_widget.dart';

/// This class is used in the [TransactionItemWidget] widget with GetX.
class TransactionItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<String>? dateTime;
  Rx<String>? amount;
  Rx<String>? balance;
  Rx<String>? type;
  Rx<bool>? isWithdrawal;
  Rx<String>? receivedAmount;
  Rx<String>? withdrawalFee;

  TransactionItemModel({
    this.icon,
    this.title,
    this.dateTime,
    this.amount,
    this.balance,
    this.type,
    this.isWithdrawal,
    this.receivedAmount,
    this.withdrawalFee,
  });
}
