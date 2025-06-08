import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import './controller/deposit_record_method_filter_controller.dart';
import './widgets/chip_view_widget.dart';
import './widgets/transaction_item_widget.dart';

class DepositRecordMethodFilterScreen
    extends GetWidget<DepositRecordMethodFilterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SizedBox(
        width: 375.h,
        child: Column(
          children: [
            _buildFilterChipsSection(),
            Expanded(
              child: _buildTransactionList(),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Deposit Record',
      showBackButton: true,
      showStatusBar: true,
      backgroundColor: appTheme.colorFF1B1C,
      height: 126.h,
      filterOptions: [
        CustomFilterOption(title: 'Order', isActive: false),
        CustomFilterOption(title: 'Way', isActive: true),
        CustomFilterOption(title: 'Today', isActive: false),
      ],
      onFilterPressed: (index) {
        controller.onFilterPressed(index);
      },
      onBackPressed: () {
        Get.back();
      },
    );
  }

  Widget _buildFilterChipsSection() {
    return Container(
      width: 370.h,
      height: 168.h,
      margin: EdgeInsets.symmetric(horizontal: 5.h),
      padding: EdgeInsets.all(18.h),
      decoration: BoxDecoration(
        color: appTheme.blackCustom,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Obx(() => GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8.h,
              mainAxisSpacing: 8.h,
              childAspectRatio: 2.5,
            ),
            itemCount: controller.chipOptions.length,
            itemBuilder: (context, index) {
              return ChipViewWidget(
                chipModel: controller.chipOptions[index],
                onTap: () {
                  controller.onChipSelected(index);
                },
              );
            },
          )),
    );
  }

  Widget _buildTransactionList() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(() => ListView.builder(
            itemCount: controller.transactions.length,
            itemBuilder: (context, index) {
              return TransactionItemWidget(
                transactionModel: controller.transactions[index],
              );
            },
          )),
    );
  }
}
