import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class CurrentRankingLeaderboardModel {
  Rx<String>? dateRange;
  Rx<String>? backgroundImage;
  Rx<int>? userRanking;
  Rx<int>? userInviteCount;
  Rx<String>? userCurrentPrize;

  CurrentRankingLeaderboardModel({
    this.dateRange,
    this.backgroundImage,
    this.userRanking,
    this.userInviteCount,
    this.userCurrentPrize,
  });
}
