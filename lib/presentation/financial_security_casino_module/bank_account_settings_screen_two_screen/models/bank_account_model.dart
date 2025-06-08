import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used for bank account data in the account card widget.

class BankAccountModel {
  Rx<String>? account;
  Rx<String>? type;
  Rx<String>? pixType;
  Rx<String>? name;
  Rx<String>? remark;

  BankAccountModel({
    this.account,
    this.type,
    this.pixType,
    this.name,
    this.remark,
  });
}
