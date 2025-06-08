import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import './controller/g_cash_deposit_record_filter_controller.dart';
import './widgets/deposit_record_item_widget.dart';

class GCashDepositRecordFilterScreen
    extends GetWidget<GCashDepositRecordFilterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          _buildFilterButtonsSection(),
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
      height: CustomAppBarHeight.extended,
      filterOptions: [
        CustomFilterOption(label: 'Order', isActive: true),
        CustomFilterOption(label: 'Way', isActive: false),
        CustomFilterOption(label: 'Today', isActive: false),
      ],
    );
  }

  Widget _buildFilterButtonsSection() {
    return Container(
      width: 375.h,
      height: 118.h,
      margin: EdgeInsets.only(top: 126.h),
      padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 6.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          SizedBox(height: 14.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildFilterButton('All', 0),
              _buildFilterButton('Reviewed', 1),
              _buildFilterButton('Success', 2),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildFilterButton('Processing', 3),
              _buildFilterButton('Closed', 4),
              _buildFilterButton('Fail', 5),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFilterButton(String text, int index) {
    return Obx(() => GestureDetector(
          onTap: () => controller.selectFilterButton(index),
          child: Container(
            width: 102.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: (controller.selectedFilterIndex.value == index)
                  ? Color(0xFF85D420)
                  : appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyleHelper.instance.body14BoldArial.copyWith(
                    color: (controller.selectedFilterIndex.value == index)
                        ? appTheme.whiteCustom
                        : appTheme.colorFFABB6),
              ),
            ),
          ),
        ));
  }

  Widget _buildTransactionList() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Obx(() => ListView.builder(
            itemCount: controller.depositRecords.length,
            itemBuilder: (context, index) {
              return DepositRecordItemWidget(
                depositRecord: controller.depositRecords[index],
              );
            },
          )),
    );
  }
}
