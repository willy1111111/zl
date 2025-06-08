import 'package:get/get.dart';
import '../controller/account_record_transaction_history_detail_controller.dart';
import '../../../core/app_export.dart';

class AccountRecordTransactionHistoryDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountRecordTransactionHistoryDetailController());
  }
}
