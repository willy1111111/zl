import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [VipCashbackDashboardScreen] screen with GetX.

class VipCashbackDashboardModel {
  Rx<String>? upcomingCashbackTitle;
  Rx<String>? expectedWinAmount;
  Rx<String>? expectedWinText;
  Rx<String>? nextUpdateTime;
  Rx<String>? youWillWinAmount;
  Rx<String>? cashbackWeekText;
  Rx<String>? currentLevel;
  Rx<String>? currentLevelIcon;
  Rx<String>? cashbackPercentage;
  Rx<String>? maxCashbackPercentage;
  Rx<String>? statisticsTime;
  Rx<String>? claimButtonText;
  Rx<String>? claimSettlementText;
  Rx<String>? claimSettlementTime;
  Rx<String>? termsAndRulesTitle;
  Rx<String>? termsAndRulesContent;

  VipCashbackDashboardModel({
    this.upcomingCashbackTitle,
    this.expectedWinAmount,
    this.expectedWinText,
    this.nextUpdateTime,
    this.youWillWinAmount,
    this.cashbackWeekText,
    this.currentLevel,
    this.currentLevelIcon,
    this.cashbackPercentage,
    this.maxCashbackPercentage,
    this.statisticsTime,
    this.claimButtonText,
    this.claimSettlementText,
    this.claimSettlementTime,
    this.termsAndRulesTitle,
    this.termsAndRulesContent,
  }) {
    upcomingCashbackTitle =
        upcomingCashbackTitle ?? 'Upcoming cashback amount'.obs;
    expectedWinAmount = expectedWinAmount ?? '453'.obs;
    expectedWinText = expectedWinText ?? 'Expected to win'.obs;
    nextUpdateTime =
        nextUpdateTime ?? 'Next update amount：2023-01-02 01:00'.obs;
    youWillWinAmount = youWillWinAmount ?? '???'.obs;
    cashbackWeekText = cashbackWeekText ?? 'CASHBACK This Week!'.obs;
    currentLevel = currentLevel ?? 'V4'.obs;
    currentLevelIcon = currentLevelIcon ?? 'assets/images/img_v4.png'.obs;
    cashbackPercentage = cashbackPercentage ?? '13% Cashback'.obs;
    maxCashbackPercentage = maxCashbackPercentage ?? '(Max:20%)'.obs;
    statisticsTime = statisticsTime ??
        'Statistics Time： 2023-11-01 00:00 ~ 2023-11-07 23:59'.obs;
    claimButtonText = claimButtonText ?? 'Claim now'.obs;
    claimSettlementText = claimSettlementText ?? 'Claim settlement time'.obs;
    claimSettlementTime =
        claimSettlementTime ?? '2023-11-13 06:00 - 2023-11-15 23:59'.obs;
    termsAndRulesTitle = termsAndRulesTitle ?? 'Terms and rules'.obs;
    termsAndRulesContent = termsAndRulesContent ??
        '1. The weekly cashback statistical time is from Monday 00:00 to Sunday 23:59\n2. Cashback collection time: next Monday 00:00 to Wednesday 23:59, it will expire if not collected\n3. The real money lost during the statistical period multiplied by the return percentage corresponding to the VIP level is the cashback you can receive\n4. If you do not place a bet within the statistical time, or your total winnings are greater than your losses, you will not receive cashback\n5. Maximum cashback reward limit per person per week: ₱10,000'
            .obs;
  }
}
