import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used for jackpot history items in the [AgentJackpotHistoryScreenTwo] screen with GetX.
class JackpotHistoryItemModel {
  Rx<String>? rank;
  Rx<String>? user;
  Rx<String>? directInviteQuantity;
  Rx<String>? prize;
  Rx<bool>? hasMedal;
  Rx<String>? medalImagePath;
  Rx<bool>? hasAlternateBackground;

  JackpotHistoryItemModel({
    this.rank,
    this.user,
    this.directInviteQuantity,
    this.prize,
    this.hasMedal,
    this.medalImagePath,
    this.hasAlternateBackground,
  });
}
