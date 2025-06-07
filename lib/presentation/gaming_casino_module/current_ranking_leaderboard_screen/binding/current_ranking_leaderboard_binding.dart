import 'package:get/get.dart';
import '../controller/current_ranking_leaderboard_controller.dart';
import '../../../../../core/app_export.dart';

class CurrentRankingLeaderboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CurrentRankingLeaderboardController());
  }
}
