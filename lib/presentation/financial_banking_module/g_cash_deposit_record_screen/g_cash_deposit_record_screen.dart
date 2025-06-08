import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import './controller/g_cash_deposit_record_controller.dart';
import './widgets/filter_button_widget.dart';
import './widgets/transaction_item_widget.dart';

class GCashDepositRecordScreen extends GetWidget<GCashDepositRecordController> {
  GCashDepositRecordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SizedBox(
        width: 375.h,
        height: 812.h,
        child: Stack(
          children: [
            _buildAppBar(),
            _buildFilterButtonsSection(),
            _buildTransactionList(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return CustomAppBar(
      title: 'Deposit Record',
      height: CustomAppBarHeight.extended,
      filterOptions: [
        CustomFilterOption(label: 'Order', isActive: false),
        CustomFilterOption(label: 'Way', isActive: true),
        CustomFilterOption(label: 'Today', isActive: false),
      ],
    );
  }

  Widget _buildFilterButtonsSection() {
    return Positioned(
      top: 126.h,
      left: 5.h,
      child: Container(
        width: 370.h,
        height: 686.h,
        color: appTheme.blackCustom,
        child: Container(
          margin: EdgeInsets.only(top: 6.h, left: 18.h),
          width: 339.h,
          height: 168.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF1E20,
            borderRadius: BorderRadius.circular(8.h),
          ),
          padding: EdgeInsets.all(10.h),
          child: Obx(() => GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 7.h,
                  mainAxisSpacing: 7.h,
                  childAspectRatio: 102 / 40,
                ),
                itemCount: controller.filterButtons.length,
                itemBuilder: (context, index) {
                  return FilterButtonWidget(
                    filterButtonModel: controller.filterButtons[index],
                    onTap: () => controller.onFilterButtonTap(index),
                  );
                },
              )),
        ),
      ),
    );
  }

  Widget _buildTransactionList() {
    return Positioned(
      top: 319.h,
      left: 0,
      child: SizedBox(
        width: 375.h,
        child: Obx(() => ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.transactions.length,
              itemBuilder: (context, index) {
                return TransactionItemWidget(
                  transactionItemModel: controller.transactions[index],
                );
              },
            )),
      ),
    );
  }
}
