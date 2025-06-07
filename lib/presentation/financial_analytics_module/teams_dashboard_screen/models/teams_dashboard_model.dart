import 'package:get/get.dart';
import '../../../core/app_export.dart';

class TeamsDashboardModel {
  Rx<String>? logoImagePath;
  Rx<String>? currencyAmount;
  Rx<String>? walletIconPath;
  Rx<String>? batteryIconPath;
  Rx<String>? agentTier;
  Rx<String>? teamCount;

  TeamsDashboardModel({
    this.logoImagePath,
    this.currencyAmount,
    this.walletIconPath,
    this.batteryIconPath,
    this.agentTier,
    this.teamCount,
  }) {
    logoImagePath = logoImagePath ?? 'assets/images/img_logowj93_1.png'.obs;
    currencyAmount = currencyAmount ?? '₱1980.00'.obs;
    walletIconPath = walletIconPath ?? 'assets/images/img_group_736.svg'.obs;
    batteryIconPath =
        batteryIconPath ?? 'assets/images/img_1_light_green_a700.svg'.obs;
    agentTier = agentTier ?? 'Junior Agent I'.obs;
    teamCount = teamCount ?? '975'.obs;
  }
}
