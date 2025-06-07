import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class RankingItemModel {
  Rx<int>? rank;
  Rx<String>? userId;
  Rx<String>? inviteQuantity;
  Rx<String>? prize;
  Rx<bool>? hasMedal;
  Rx<String>? medalImage;
  Rx<bool>? isUserRank;

  RankingItemModel({
    this.rank,
    this.userId,
    this.inviteQuantity,
    this.prize,
    this.hasMedal,
    this.medalImage,
    this.isUserRank,
  });
}
