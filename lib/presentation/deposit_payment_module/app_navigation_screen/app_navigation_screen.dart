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
                        screenTitle: "首页充值加成",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jeetbajiGamingHomeScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-2个",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.naradGamingHubHomeScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-充值记录-存款详情",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.gCashDepositDetailScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-充值记录-财务拒绝提现详情",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.gCashDepositRejectionDetailScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-充值记录-类别赛选",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.depositRecordListScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "存款信息-第三方支付成功界面 Two",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.depositConfirmationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-定金 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.walletDepositConfirmationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-未t填写金额选着样式",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.walletDepositScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "存款信息-第三方支付成功界面 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.paymentStatusScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "充值活动-弹窗 One",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jBet88DepositBonusScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-定金",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.walletDepositAmountScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-充值记录-方式赛选",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.depositRecordMethodFilterScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-充值记录-时间赛选",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.depositRecordTimeFilterScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "钱包-选择金额样式",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.walletDepositPaymentScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "存款信息-第三方支付成功界面",
                        onTapScreenTitle: () => onTapScreenTitle(context,
                            AppRoutes.depositTransactionConfirmationScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "充值活动-弹窗",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.jBet88DepositPromotionScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "首页-1个",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.naradGamingCasinoHomeScreen),
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
