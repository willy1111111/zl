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
                        screenTitle: "转盘结果-抽到现金 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.spinGameVictoryScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "抽奖-满足提现需求-提现",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.withdrawalSuccessScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-5个",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jetbetGamingHubScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-7个 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.naradGamingHubHomeScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-6个",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.naradCasinoHomeScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-转盘弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.spinGameCashWithdrawalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "转盘结果-抽到次数",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.spinWheelVictoryScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-任务",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.noticeNotificationsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "抽奖-退出页面-挽留",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.withdrawalHelpScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "转盘结果-抽到现金",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.casinoSpinWinCelebrationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-3个",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.naradCasinoGameHubScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-4个",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.naradCasinoGamingPlatformScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "抽奖-退出页面-挽留 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.luckyBonusWithdrawalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "转盘结果-抽到帮助金（随机金额)",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.spinGameRewardVictoryScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "抽奖-未满足体现需求",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.gamingWithdrawalConfirmationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "已邀请成功的通知",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.referralBonusDialogScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-7个",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.naradGamingPlatformHomeScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-任务(缺省页)",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.noticeEmptyStateScreen),
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
