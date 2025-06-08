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
                        screenTitle: "分享海报One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.luckySpinWheelGameScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "USDT绑定   从未设置交易密码输入金额转态",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.cryptoWalletWithdrawalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-绑卡选择类型",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.walletWithdrawalTypeSelectionScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "绑定加密货币   设置-卡列表页",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.bankAccountSettingsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "其他银行卡绑定状态",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.cryptoWalletWithdrawalDetailScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "usdt绑定成功未输入状态",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.usdtWithdrawalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "分享页面One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gamingAppShareScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "分享海报Four",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jbet88ReferralBonusScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "usdt绑定成功后输入状态",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.usdtWithdrawalFormScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "新一轮转盘活动弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.spinGamePhoneVerificationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-提款",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.walletDepositTypeSelectionScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "次日告知差多少人及剩余时间",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.spinGameWithdrawalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "USDT绑定   从未设置交易密码",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.cryptoWalletPasswordSetupScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "绑定   从未设置交易密码 One",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.walletBankAccountsWithdrawalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "分享海报Three",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jbet88ReferralRewardsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "分享海报Two",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jbet88BenefitsPromotionScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "分享海报-文字安全区间",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.textSafeZoneDisplayScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "绑定   从未设置交易密码",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.electronicWalletWithdrawalScreen),
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
