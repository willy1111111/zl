import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GamingAppNotificationsModel {
  Rx<String>? appBarTitle;
  Rx<String>? balance;

  GamingAppNotificationsModel({
    this.appBarTitle,
    this.balance,
  });
}
