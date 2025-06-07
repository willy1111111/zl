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
                      // Agent Module Section
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        decoration: BoxDecoration(
                          color: appTheme.colorFF76CD,
                          borderRadius: BorderRadius.circular(8.h),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 5.h),
                        child: Center(
                          child: Text(
                            "代理模块 (Agent Module)",
                            style: TextStyleHelper.instance.title18Bold.copyWith(
                              color: appTheme.whiteCustom,
                            ),
                          ),
                        ),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "菲23--启动页-2025-4-TwentyEight",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.referralRewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "老带新",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.invitationBonusScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "老带新-未登录",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.agentReferralProgramScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "老带新-最高级One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.masterAgentDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "成就奖励",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.achievementRewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "菲23-每日首次进入弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.agentIncomeOverviewScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-1个",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.casinoHomeScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "老带新-初级代理",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.juniorAgentDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "老带新-等级2--中级代理",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.intermediateAgentDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "启动页",
                        onTapScreenTitle: () =>
                            onTapScreenTitle(context, AppRoutes.splashScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "老带新---最高等级提示状态",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.maxTierAgentDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "老带新-高级One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.seniorAgentDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "菲首页",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gamingHubScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "成就奖励-领取弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.congratulationsRewardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "老带新-最高等级Two",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.eliteAgentDashboardScreen),
                      ),

                      // Auth System Module Section
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        decoration: BoxDecoration(
                          color: appTheme.colorFF14BF,
                          borderRadius: BorderRadius.circular(8.h),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 5.h),
                        child: Center(
                          child: Text(
                            "认证系统模块 (Auth System Module)",
                            style: TextStyleHelper.instance.title18Bold.copyWith(
                              color: appTheme.whiteCustom,
                            ),
                          ),
                        ),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "赌场应用推广",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.casinoAppPromotionScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "系统维护",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.systemMaintenanceScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "忘记密码",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.forgotPasswordScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "代理仪表板",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.agentDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "应用下载推广",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.appDownloadPromotionScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "成就仪表板",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.achievementDashboardScreen),
                      ),

                      // VIP Rewards Module Section
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        decoration: BoxDecoration(
                          color: appTheme.colorFFFFC6,
                          borderRadius: BorderRadius.circular(8.h),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 5.h),
                        child: Center(
                          child: Text(
                            "VIP奖励模块 (VIP Rewards Module)",
                            style: TextStyleHelper.instance.title18Bold.copyWith(
                              color: appTheme.blackCustom,
                            ),
                          ),
                        ),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "VIP等级图标画廊",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.vipRankIconsGalleryScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "VIP奖励和福利",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.vipRewardsAndBenefitsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "VIP返现仪表板",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.vipCashbackDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "VIP奖励仪表板",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.vipRewardsDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "VIP升级要求",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.vipUpgradeRequirementsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "JBET88 VIP奖励仪表板",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jbet88VipRewardsDashboardScreen),
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
