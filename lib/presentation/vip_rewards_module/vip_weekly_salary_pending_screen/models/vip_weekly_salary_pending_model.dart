import 'package:get/get.dart';

import '../../../../core/app_export.dart';
import './vip_requirement_item_model.dart';

class VipWeeklySalaryPendingModel {
  Rx<List<VipRequirementItemModel>?> vipRequirements =
      Rx<List<VipRequirementItemModel>?>([]);
  Rx<String>? currentLevel = 'V8'.obs;
  Rx<String>? weeklySalary = '₱1999'.obs;
  Rx<String>? collectionTime = 'Sunday 22:00:00'.obs;
  Rx<bool>? isAwardAvailable = true.obs;

  VipWeeklySalaryPendingModel({
    this.currentLevel,
    this.weeklySalary,
    this.collectionTime,
    this.isAwardAvailable,
  });
}
