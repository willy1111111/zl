import 'package:flutter/material.dart';

import '../../core/app_export.dart';
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
                        screenTitle: "下载详情页-PC",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.appDownloadScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "获利奖金明细-成就奖励",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.achievementBonusScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "获利奖金明细-注册奖金",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.registrationBonusScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "签到",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.signInRewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.casinoGamingHubScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "签到-补签 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.continuousSignInMakeupScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "签到-补签",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.continuousSignInScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "老带新-分享规则",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.agentLevelSystemScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "弹框",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.agentIncomeModalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页弹出",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gamingHomeScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "获利奖金明细-达标用户奖励",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.qualifiedBonusScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "签到活动弹出",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.continuousSignInActivityScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "获利奖金明细-缺省页",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.bonusDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "获利奖金明细-返水奖励",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.bettingBonusScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "二次登录弹出",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gamingAppDownloadScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "签到-已签到",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.signedInRewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "菲首页",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jetBetCasinoScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "获利奖金明细-存款奖金",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.depositBonusHistoryScreen),
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
