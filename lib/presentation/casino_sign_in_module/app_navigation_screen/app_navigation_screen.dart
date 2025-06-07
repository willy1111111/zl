import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
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
                        screenTitle: "签到- 免费补签/免费签到 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.dailySignInRewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "第三方登录-完善信息 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.phoneVerificationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "注册 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jBet88RegistrationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "菲23新弹窗领取注册",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gameRewardClaimScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "签到-补签",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.signInReSignScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "登录-调起键盘",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jBet88LoginScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "签到-第4天签到",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.fourthDaySignInScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "注册成功引导页",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.registrationSuccessScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "免责协议",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.userAgreementScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "菲23新弹窗---绑定手机弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.congratulationsBonusScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "注册",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jBet88RegistrationScreenTwo),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "注册-点击协议文字效果",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jBet88RegistrationScreenThree),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "未处于活动期间",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.moneyRainEventScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "签到- 免费补签/免费签到",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.freeSignInRewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "签到- 第5天签到",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.fifthDaySignInScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "菲23新弹窗领取注册 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.casinoBonusRewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "第三方登录-完善信息",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.accountSetupCompletionScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "登录",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jBet88LoginScreenTwo),
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
