import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import './controller/deposit_record_list_controller.dart';
import './widgets/transaction_item_widget.dart';

class DepositRecordListScreen extends GetWidget<DepositRecordListController> {
  DepositRecordListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          _buildFilterChipsSection(),
          Expanded(
            child: _buildTransactionList(),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Deposit Record',
      showBackButton: true,
      showStatusBar: true,
      filterOptions: [
        CustomFilterOption(title: 'Order', isActive: true),
        CustomFilterOption(title: 'Way'),
        CustomFilterOption(title: 'Today'),
      ],
      onFilterPressed: (index) => controller.onFilterPressed(index),
      onBackPressed: () => Get.back(),
      backgroundColor: appTheme.colorFF1B1C,
      height: 126.h,
    );
  }

  Widget _buildFilterChipsSection() {
    return Container(
      width: 375.h,
      height: 118.h,
      color: appTheme.colorFF0000,
      padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 6.h),
      child: Container(
        width: 339.h,
        height: 106.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF1E20,
          borderRadius: BorderRadius.circular(8.h),
        ),
        padding: EdgeInsets.all(10.h),
        child: Column(
          children: [
            Row(
              children: [
                _buildFilterChip('All', 0),
                SizedBox(width: 7.h),
                _buildFilterChip('Reviewed', 1),
                SizedBox(width: 7.h),
                _buildFilterChip('Success', 2),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                _buildFilterChip('Processing', 3),
                SizedBox(width: 7.h),
                _buildFilterChip('Closed', 4),
                SizedBox(width: 7.h),
                _buildFilterChip('Fail', 5),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterChip(String label, int index) {
    return Obx(() => GestureDetector(
          onTap: () => controller.onChipSelected(index),
          child: Container(
            width: 102.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: (controller.selectedChipIndex.value == index)
                  ? Color(0xFF85D420)
                  : appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Center(
              child: Text(
                label,
                style: TextStyleHelper.instance.body14BoldArial.copyWith(
                    color: (controller.selectedChipIndex.value == index)
                        ? appTheme.whiteCustom
                        : appTheme.colorFFABB6),
              ),
            ),
          ),
        ));
  }

  Widget _buildTransactionList() {
    return Container(
      width: 375.h,
      color: appTheme.colorFF1E20,
      child: Obx(() => ListView.builder(
            itemCount: controller.transactions.length,
            itemBuilder: (context, index) {
              return TransactionItemWidget(
                transaction: controller.transactions[index],
              );
            },
          )),
    );
  }
}
