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
                        screenTitle: "添加充值账户-添加银行账户 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.addBankAccountScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "充值记录-方式赛选",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gCashDepositRecordScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-提款-满足打码量(弹窗)",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.withdrawalLimitProgressScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "日累计存款活动-弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.vipDailyCumulativeDepositBenefitsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-提款-满足打码量(弹窗-无打码量任务 状态)",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.withdrawalLimitNotificationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-提款-满足打码量 One",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.pixMobileVipWithdrawalLimitsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-提款-满足打码量-卡",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.pixMobileWalletDashboardScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "交易-存款 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.accountRecordScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "充值记录-类别赛选",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gCashDepositRecordFilterScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "交易-存款",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.accountRecordTransactionHistoryScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "充值记录",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gCashDepositRecordHistoryScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "下注记录",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.bettingRecordHistoryScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-提款-满足打码量",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.pixMobileWalletWithdrawalScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "选择usdt类型   下拉选后状态",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.cryptoWalletTransactionSetupScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "选择usdt类型   下拉选",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.cryptoWalletSetupScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "日累计存款活动",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes
                                .vipDailyCumulativeDepositBenefitsDetailScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "添加充值账户-添加银行账户",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.addBankAccountPixScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-提款-未满足打码量",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.walletWithdrawalRequirementsScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "交易-存款 Two",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes
                                .accountRecordTransactionHistoryDetailScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "绑定加密货币   从未设置交易密码",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.cryptoWalletSetupPasswordScreen),
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
