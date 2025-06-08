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
                        screenTitle: "充值记录-财务拒绝提现详情",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gCashDepositRecordDetailScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "体验金主页面-参与活动之后",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.experienceBonusGameScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-领取成功",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gamingCasinoVipRewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "奖金明细页面-新增体验金类型",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.bonusCenterScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "充值记录-存款详情",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gCashDepositRecordScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "体验⾦使⽤需验证⼿机号-提示弹窗 One",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.gamingExperienceBonusActivationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "体验金主页面-参与活动之后 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.experienceBonusGameScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "体验金弹窗领取页面",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.gamingRewardsCongratulationsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "批量优惠存入-开宝箱 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jBet88GamingHubScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "充值记录-时间赛选",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.depositRecordListScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "体验⾦使⽤需验证⼿机号-提示弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.gamingExperienceBonusActivationScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "信息",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.notificationsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-短信弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gamingCasinoMobileAppHomeScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "其他页面-进入游戏页面提示弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gamingTipsBonusModalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "批量优惠存入-开宝箱",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jBet88GamingHubScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "体验金-奖励弹窗页面",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.achievementBonusReceivedScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-活动过期",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gamingCasinoVipRewardsScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "体验金个人中心入口页面",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.naradGamingDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "批量优惠存入-领取奖励",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jBet88GamingHubScreenThree),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "提款记录",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gCashDepositRecordListScreen),
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
