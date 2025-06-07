import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipWeeklyRewardsDashboardModel {
  Rx<String> currentVipLevel = 'V8'.obs;
  Rx<String> weeklySalary = '₱1999'.obs;
  Rx<String> collectionTime = 'Sunday 22:00:00'.obs;
  Rx<String> currentBalance = 'R\$1980.00'.obs;
  RxBool hasAvailableRewards = false.obs;

  VipWeeklyRewardsDashboardModel();
}
