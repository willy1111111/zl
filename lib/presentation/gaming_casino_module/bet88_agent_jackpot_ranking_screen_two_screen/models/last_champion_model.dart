import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class LastChampionModel {
  Rx<String>? userId;
  Rx<String>? inviteCount;
  Rx<String>? prizeAmount;

  LastChampionModel({
    this.userId,
    this.inviteCount,
    this.prizeAmount,
  });
}
