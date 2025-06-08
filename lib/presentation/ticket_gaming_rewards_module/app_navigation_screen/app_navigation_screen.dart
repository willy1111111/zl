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
                        screenTitle: "炸金蛋",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.goldenEggTicketCollectionScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "票券中心-票券任务记录-无数据",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.ticketRecordsDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "F转盘元素",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gamingTicketSpinWheelScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "宝箱-光",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.spiritualRadianceScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "宝箱-信息",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.ticketClaimInfoScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "红包 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.redPackageTicketEventScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "宝箱-礼包",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.rewardsAchievementsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "F转盘元素 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.luckyWheelTicketEventScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "宝箱-确认",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.treasureChestTicketClaimScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "票券中心-我的票券-下载app",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.ticketEventConfirmationDialogScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "装盘",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.spinWheelGameplayScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "票券中心-我的票券-无数据",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.ticketEventDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "3-点击按钮/红包后 先放大,摇晃2次后回正",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.redEnvelopeIconScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "宝箱-宝箱",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.treasureChestDisplayScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "宝箱-彩带",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.celebrationConfettiScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "装盘切割文件",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.integratedSpinWheelGamingScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "宝箱弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.cashVoucherRewardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "红包",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.appDownloadBonusTicketScreen),
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
