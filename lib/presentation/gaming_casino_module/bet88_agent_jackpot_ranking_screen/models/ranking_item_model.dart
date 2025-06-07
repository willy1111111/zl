import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class RankingItemModel {
  Rx<int>? rank;
  Rx<String>? username;
  Rx<int>? inviteCount;
  Rx<String>? prize;
  Rx<bool>? hasMedal;
  Rx<String>? medalImage;

  RankingItemModel({
    this.rank,
    this.username,
    this.inviteCount,
    this.prize,
    this.hasMedal,
    this.medalImage,
  });
}
