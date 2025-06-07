import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipLevelItemModel {
  Rx<String>? vipIconPath;
  Rx<String>? levelText;
  Rx<String>? rangeIconPath;
  RxList<Rx<String>>? betRanges;
  RxList<Rx<String>>? rewards;

  VipLevelItemModel({
    this.vipIconPath,
    this.levelText,
    this.rangeIconPath,
    this.betRanges,
    this.rewards,
  });
}
