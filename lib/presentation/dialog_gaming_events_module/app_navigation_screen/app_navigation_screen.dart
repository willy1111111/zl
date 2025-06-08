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
                        screenTitle: "红包弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.redPackagePurchaseDialogScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "未中奖弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gameFailureDialogScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "砸蛋弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.goldenEggRewardDialogScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "票券系统条件展示 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.ticketEventTaskScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "票券系统条件展示",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.ticketEventProgressScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "转盘弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.luckyWheelSpinScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "票券系统条件展示-分享",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.helpInvitationModalScreen),
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
