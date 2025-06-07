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
                        screenTitle: "首页-单个游戏详进入弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.casinoGameDetailModalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页说明弹框精简文字",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.bettingRewardsDescriptionModalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "排行榜-规则",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.agentRankingBonusRulesScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "弹窗领取页面",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gamingBonusRewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-1个",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jetsoCasinoHomeScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "代理排行榜-查看详情",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.currentRankingLeaderboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "代理排行榜",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.bet88AgentJackpotRankingScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "昨日无可领取奖金",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.vipDailySalaryDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "活动-活动列表",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jetBrGamingPromotionsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "代理排行榜 One",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.bet88AgentJackpotRankingScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "代理排行榜-历史",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.agentJackpotHistoryRankingScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "个人中心",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jbet88UserDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "代理排行榜-查看详情-无排名",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.currentRankingLeaderboardScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "菲首页",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jetBetGamingHubScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "活动界面-当个活动详情",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.provedorDeJogosBonusScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "排行榜-我的奖品 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.betboRewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "排行榜-我的奖品",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.betboRewardsScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "个人中心-领取奖金总额记录-收起",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.naradGamingDashboardScreen),
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
