import 'package:get/get.dart';
import '../../../../core/app_export.dart';
import '../widgets/vip_level_item_widget.dart';

/// This class is used in the [VipLevelItemWidget] widget with GetX.

class VipLevelItemModel {
  Rx<String>? vipIcon;
  Rx<String>? levelText;
  Rx<String>? depositAmount;
  Rx<String>? betAmount;
  Rx<String>? upgradeBonus;
  Rx<String>? weeklyCashback;

  VipLevelItemModel({
    this.vipIcon,
    this.levelText,
    this.depositAmount,
    this.betAmount,
    this.upgradeBonus,
    this.weeklyCashback,
  });
}
