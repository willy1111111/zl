import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class RankingItemModel {
  Rx<String>? rank;
  Rx<String>? bonus;
  Rx<String>? iconPath;
  Rx<int>? textColor;

  RankingItemModel({
    this.rank,
    this.bonus,
    this.iconPath,
    this.textColor,
  });
}
