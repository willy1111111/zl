import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class RankingItemModel {
  Rx<int>? rank;
  Rx<String>? userId;
  Rx<int>? inviteCount;
  Rx<String>? prize;
  Rx<bool>? isTopThree;
  Rx<bool>? hasMedal;
  Rx<bool>? isCurrentUser;

  RankingItemModel({
    this.rank,
    this.userId,
    this.inviteCount,
    this.prize,
    this.isTopThree,
    this.hasMedal,
    this.isCurrentUser,
  });
}
