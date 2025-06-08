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
                        screenTitle: "个人中心-领取奖金总额记录-收起",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.userDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "信息",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.notificationsManagementScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "会员意见箱-下拉选择",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.customerSupportSuggestionScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "信息 Seven",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.gamingPlatformNotificationsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "信息 Eight",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gamingAppNotificationsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "帮助",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.notificationsHelpGuideScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "信息 Four",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.emailBindingConfirmationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "奖金明细",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.bonusDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "会员意见箱-达到上限制",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.suggestionFeedbackModalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "信息-换行",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gamingAppNotificationsScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "信息 Six",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.gamingAppNotificationsScreenThree),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "会员意见箱-提交意见成功轻提示",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.teamsCenterDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "信息 Three",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.notificationsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "信息 Two",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.notificationsInformationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "设置-个人信息",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.userProfileSettingsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "信息 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.notificationsScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "会员意见箱",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.suggestionFeedbackModalScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "信息 Five",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.notificationsScreenThree),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "信息-空",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.notificationsEmptyStateScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "奖金明细 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gamingBonusDashboardScreen),
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
