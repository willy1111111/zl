import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

/// This class is used in the [AgentJackpotHistoryRankingScreen] screen with GetX.

class AgentJackpotHistoryRankingModel {
  Rx<String>? jackpotAmount;
  Rx<String>? dateRange;
  Rx<String>? previousRanking;
  Rx<String>? previousPrize;

  AgentJackpotHistoryRankingModel({
    this.jackpotAmount,
    this.dateRange,
    this.previousRanking,
    this.previousPrize,
  });

  AgentJackpotHistoryRankingModel.fromJson(Map<String, dynamic> json) {
    jackpotAmount = (json['jackpotAmount'] as String?)
        ?.obs; // Modified: Added null-aware operator to fix type mismatch
    dateRange = (json['dateRange'] as String?)
        ?.obs; // Modified: Added null-aware operator to fix type mismatch
    previousRanking = (json['previousRanking'] as String?)
        ?.obs; // Modified: Added null-aware operator to fix type mismatch
    previousPrize = (json['previousPrize'] as String?)
        ?.obs; // Modified: Added null-aware operator to fix type mismatch
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['jackpotAmount'] = jackpotAmount?.value;
    data['dateRange'] = dateRange?.value;
    data['previousRanking'] = previousRanking?.value;
    data['previousPrize'] = previousPrize?.value;
    return data;
  }
}
