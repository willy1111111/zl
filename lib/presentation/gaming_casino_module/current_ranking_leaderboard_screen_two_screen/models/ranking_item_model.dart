import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class RankingItemModel {
  Rx<String>? rank;
  Rx<String>? medalIcon;
  Rx<String>? userId;
  Rx<String>? inviteCount;
  Rx<String>? prize;
  Rx<bool>? isMedal;

  RankingItemModel({
    this.rank,
    this.medalIcon,
    this.userId,
    this.inviteCount,
    this.prize,
    this.isMedal,
  });
}
