import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import './controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Column(
                    children: [
                      _buildScreenTitle(
                        context,
                        screenTitle: "状态2本轮还未结束，重复进来",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.moneyRainRewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "新一轮转盘活动弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.spinWheelWithdrawalConfirmationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "抽奖-满足提现需求-提现-待审核",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.withdrawalConfirmationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "奖励记录",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.spinBonusLeaderboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "状态3本轮未抢到奖金",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.moneyRainGameScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "未处于活动期间-过去场次，少场次",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.moneyRainPromotionScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "转盘主页-隐藏等级",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.spinWheelDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "状态4未充值会员，无资格领取 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.naradMoneyRainPromotionScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "状态1本轮还未领取",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.moneyRainGamingAppScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "已邀请成功的通知",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.spinReferralBonusModalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "转盘主页-规则",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.luckySpinInvitationGuideScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "状态4未充值会员，无资格领取",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gamingMoneyRainPromotionScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-转盘",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jeet98SpinWheelBonusScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "转盘-验证手机号",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.phoneVerificationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "转盘主页-我的提款记录",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.withdrawalHistoryScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "转盘主页-我的提款记录-无数据",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.withdrawalHistoryEmptyScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "规则",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.spinGameRulesModalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "菲首页",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jetBetCasinoHomeScreen),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyleHelper.instance.title20RegularRoboto
                      .copyWith(color: Color(0XFF000000)),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Color(0XFF343330),
                )
              ],
            ),
            SizedBox(height: 10.h),
            Divider(height: 1.h, thickness: 1.h, color: Color(0XFFD2D2D2)),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(BuildContext context, String routeName) {
    Get.toNamed(routeName);
  }
}
