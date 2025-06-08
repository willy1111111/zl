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
                        screenTitle: "忘记密码-手机支付找回密码 -未正确完整手机号按钮置灰",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.forgotTransactionPasswordScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "设置-添加账户 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.bankAccountSettingsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "个人中心",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.userDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "设置-修改密码",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.securityPasswordConfigurationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "票券中心-票券领取成功（金蛋）",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.ticketEventRewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "设置-个人信息",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.userProfileSettingsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "票券中心-获得票券",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.ticketEventScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-1个",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.casinoHomeScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "忘记密码-手机支付找回密码 One",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.forgotTransactionPasswordScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "忘记密码-手机支付找回密码",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.forgotTransactionPasswordScreenThree),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "票券中心-票券领取成功（转盘）",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.ticketEventRewardsScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "设置-添加账户",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.bankAccountSettingsScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "票券中心-票券领取成功（宝箱）",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.ticketEventRewardsScreenThree),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "票券中心-我的票券",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.myTicketRewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "设置-添加账户 Two",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.bankAccountSettingsScreenThree),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "票券中心-票券领取成功（红包）",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.ticketEventRewardsScreenFour),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "票券中心-任务记录",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.ticketRecordsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "设置-个人信息 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.emailBindingConfirmationScreen),
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
