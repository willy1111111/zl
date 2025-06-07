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
                        screenTitle: "兑换码过期-无随机验证码",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.phoneVerificationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "邀请页面",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.socialShareScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "兑换码过期",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.phoneVerificationScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "排行榜-历史 Two",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jackpotHistoryScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "排行榜-奖品无数据",
                        onTapScreenTitle: () =>
                            onTapScreenTitle(context, AppRoutes.rewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "团队成员",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.teamsDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "排行榜-历史 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.agentJackpotHistoryScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "报表数据汇总-时间筛选Two",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.incomeAnalyticsDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "我的个人中心Zero One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.rewardsCongratulationsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "兑换码过期 -未正确完整手机号按钮置灰-无随机验证码",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.phoneVerificationScreenThree),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "团队成员-弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.teamHierarchyModalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "报表数据汇总-时间筛选",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.incomeDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "排行榜-历史",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.agentJackpotHistoryScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "我的个人中心Zero",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.giftCodeExchangeScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "兑换码过期 -未正确完整手机号按钮置灰",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.phoneVerificationScreenFour),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "报表数据添加ranking bonus",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.incomeDashboardScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "报表数据汇总-数据加载",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.incomeDashboardScreenThree),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "兑换码过期 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.phoneVerificationScreenFive),
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
