import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [RewardsScreen] screen with GetX.

class RewardsModel {
  Rx<String> noDataText = "No data".obs;
  Rx<String> titleText = "My Rewards".obs;

  RewardsModel();
}
