import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class RankingItemModel {
  Rx<bool>? hasIcon;
  Rx<String>? iconPath;
  Rx<String>? rank;
  Rx<String>? bonus;

  RankingItemModel({
    this.hasIcon,
    this.iconPath,
    this.rank,
    this.bonus,
  });
}
