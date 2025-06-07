import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

/// This class is used in the [DepositBonusHistoryScreen] screen with GetX.

class DepositBonusHistoryModel {
  RxString totalDepositBonus = '333,333.00'.obs;
  RxInt totalUsers = 10.obs;
  RxInt selectedTabIndex = 4.obs;
  RxInt selectedBottomNavIndex = 2.obs;

  DepositBonusHistoryModel();
}
