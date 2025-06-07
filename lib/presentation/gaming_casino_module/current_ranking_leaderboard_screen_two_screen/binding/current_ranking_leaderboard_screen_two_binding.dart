import 'package:get/get.dart';
import '../controller/current_ranking_leaderboard_screen_two_controller.dart';
import '../../../../../core/app_export.dart';

class CurrentRankingLeaderboardScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CurrentRankingLeaderboardScreenTwoController());
  }
}
