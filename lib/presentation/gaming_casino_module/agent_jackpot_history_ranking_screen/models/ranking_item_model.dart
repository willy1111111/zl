import 'package:get/get.dart';
import '../../../../../core/app_export.dart';
import '../widgets/ranking_item_widget.dart';

/// This class is used in the [RankingItemWidget] component with GetX.

class RankingItemModel {
  Rx<String>? rank;
  Rx<String>? medalIcon;
  Rx<String>? username;
  Rx<String>? inviteQuantity;
  Rx<String>? prize;
  Rx<bool>? hasMedal;
  Rx<bool>? hasAlternateBackground;
  Rx<bool>? hasSpecialIndicator;

  RankingItemModel({
    this.rank,
    this.medalIcon,
    this.username,
    this.inviteQuantity,
    this.prize,
    this.hasMedal,
    this.hasAlternateBackground,
    this.hasSpecialIndicator,
  });

  RankingItemModel.fromJson(Map<String, dynamic> json) {
    rank = (json['rank'] as String?)
        ?.obs; // Modified: Added null-aware operator to fix type mismatch
    medalIcon = (json['medalIcon'] as String?)
        ?.obs; // Modified: Added null-aware operator to fix type mismatch
    username = (json['username'] as String?)
        ?.obs; // Modified: Added null-aware operator to fix type mismatch
    inviteQuantity = (json['inviteQuantity'] as String?)
        ?.obs; // Modified: Added null-aware operator to fix type mismatch
    prize = (json['prize'] as String?)
        ?.obs; // Modified: Added null-aware operator to fix type mismatch
    hasMedal = (json['hasMedal'] as bool?)
        ?.obs; // Modified: Added null-aware operator to fix type mismatch
    hasAlternateBackground = (json['hasAlternateBackground'] as bool?)
        ?.obs; // Modified: Added null-aware operator to fix type mismatch
    hasSpecialIndicator = (json['hasSpecialIndicator'] as bool?)
        ?.obs; // Modified: Added null-aware operator to fix type mismatch
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['rank'] = rank?.value;
    data['medalIcon'] = medalIcon?.value;
    data['username'] = username?.value;
    data['inviteQuantity'] = inviteQuantity?.value;
    data['prize'] = prize?.value;
    data['hasMedal'] = hasMedal?.value;
    data['hasAlternateBackground'] = hasAlternateBackground?.value;
    data['hasSpecialIndicator'] = hasSpecialIndicator?.value;
    return data;
  }
}
