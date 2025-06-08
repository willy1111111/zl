import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GamingCasinoMobileAppHomeModel {
  Rx<String>? userBalance;
  Rx<bool>? showModal;
  Rx<int>? selectedSidebarIndex;
  Rx<int>? selectedBottomNavIndex;

  GamingCasinoMobileAppHomeModel({
    this.userBalance,
    this.showModal,
    this.selectedSidebarIndex,
    this.selectedBottomNavIndex,
  });
}
