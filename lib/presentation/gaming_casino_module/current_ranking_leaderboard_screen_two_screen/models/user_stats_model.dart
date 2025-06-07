import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class UserStatsModel {
  Rx<String>? ranking;
  Rx<String>? inviteCount;
  Rx<String>? currentPrize;

  UserStatsModel({
    this.ranking,
    this.inviteCount,
    this.currentPrize,
  });
}
