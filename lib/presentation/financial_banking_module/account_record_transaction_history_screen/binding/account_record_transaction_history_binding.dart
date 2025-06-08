import 'package:get/get.dart';
import '../controller/account_record_transaction_history_controller.dart';
import '../../../../core/app_export.dart';

class AccountRecordTransactionHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountRecordTransactionHistoryController());
  }
}
