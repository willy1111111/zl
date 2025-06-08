import 'package:get/get.dart';
import '../../../core/app_export.dart';

class NotificationsModel {
  Rx<String>? appBarTitle;
  Rx<String>? balance;
  Rx<String>? loadedText;

  NotificationsModel({
    this.appBarTitle,
    this.balance,
    this.loadedText,
  });
}
