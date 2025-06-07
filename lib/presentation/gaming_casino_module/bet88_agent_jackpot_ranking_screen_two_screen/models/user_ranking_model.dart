import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class UserRankingModel {
  Rx<String>? userId;
  Rx<String>? inviteAmount;
  Rx<int>? currentRank;
  Rx<int>? inviteUserCount;

  UserRankingModel({
    this.userId,
    this.inviteAmount,
    this.currentRank,
    this.inviteUserCount,
  });
}
