import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import './controller/g_cash_deposit_record_history_controller.dart';
import './widgets/transaction_item_widget.dart';

class GCashDepositRecordHistoryScreen
    extends GetWidget<GCashDepositRecordHistoryController> {
  GCashDepositRecordHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigation());
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: 'Deposit Record',
        height: CustomAppBarHeight.extended,
        filterOptions: [
          CustomFilterOption(label: 'Order', isActive: false),
          CustomFilterOption(label: 'Way', isActive: false),
          CustomFilterOption(label: 'Today', isActive: false),
        ],
        onBackPressed: () => Get.back());
  }

  Widget _buildBody() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Obx(() => ListView.builder(
            itemCount: controller.transactions.length,
            itemBuilder: (context, index) {
              return TransactionItemWidget(
                  transaction: controller.transactions[index],
                  onTap: () => controller
                      .onTransactionTap(controller.transactions[index]));
            })));
  }

  Widget _buildBottomNavigation() {
    return Container(
        height: 80.h,
        color: appTheme.colorFF1E20,
        child: Center(
            child: Container(
                width: 159.h,
                height: 22.h,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () => controller.onPreviousPressed(),
                          child: Container(
                              child: Center(
                                  child: Text('Previous',
                                      style: TextStyleHelper.instance.body14Bold
                                          .copyWith(
                                              color: appTheme.colorFF8089,
                                              height: 1.2))))),
                      GestureDetector(
                          onTap: () => controller.onNextPressed(),
                          child: Container(
                              child: Center(
                                  child: Text('Next',
                                      style: TextStyleHelper
                                          .instance.title16Bold
                                          .copyWith(height: 1.2))))),
                    ]))));
  }
}
