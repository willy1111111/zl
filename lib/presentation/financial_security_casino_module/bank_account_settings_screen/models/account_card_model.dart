import 'package:get/get.dart';
import '../../../core/app_export.dart';

class AccountCardModel {
  Rx<String>? account;
  Rx<String>? type;
  Rx<String>? pixType;
  Rx<String>? name;
  Rx<String>? remark;

  AccountCardModel({
    this.account,
    this.type,
    this.pixType,
    this.name,
    this.remark,
  });
}
