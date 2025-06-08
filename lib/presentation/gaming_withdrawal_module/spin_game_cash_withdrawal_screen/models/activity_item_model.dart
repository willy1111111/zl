import 'package:get/get.dart';
import '../../../core/app_export.dart';

class ActivityItemModel {
  Rx<String>? username;
  Rx<String>? status;
  Rx<String>? amount;

  ActivityItemModel({
    this.username,
    this.status,
    this.amount,
  });
}
