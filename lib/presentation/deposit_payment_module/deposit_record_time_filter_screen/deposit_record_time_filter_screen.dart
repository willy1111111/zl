import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/deposit_record_time_filter_controller.dart';
import './widgets/transaction_item_widget.dart';

class DepositRecordTimeFilterScreen
    extends GetWidget<DepositRecordTimeFilterController> {
  DepositRecordTimeFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(126.h),
        child: CustomAppBar(
          title: 'Deposit Record',
          showBackButton: true,
          showStatusBar: true,
          filterOptions: [
            CustomFilterOption(title: 'Order', isActive: false),
            CustomFilterOption(title: 'Way', isActive: false),
            CustomFilterOption(title: 'Today', isActive: true),
          ],
          onFilterPressed: (index) => controller.onFilterPressed(index),
          onBackPressed: () => Get.back(),
          backgroundColor: appTheme.colorFF1B1C,
          height: 126.h,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: appTheme.colorFF0000,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 6.h),
              _buildFilterTabsSection(),
              SizedBox(height: 20.h),
              _buildTransactionList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterTabsSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      width: 339.h,
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          _buildTimeFilterTabs(),
          SizedBox(height: 16.h),
          _buildDateRangeSelector(),
        ],
      ),
    );
  }

  Widget _buildTimeFilterTabs() {
    return Obx(() => Row(
          children: [
            _buildTabButton(
              'Today',
              0,
              controller.selectedTimeFilter.value == 0,
            ),
            SizedBox(width: 8.h),
            _buildTabButton(
              'Yesterday',
              1,
              controller.selectedTimeFilter.value == 1,
            ),
            SizedBox(width: 8.h),
            _buildTabButton(
              '7-days',
              2,
              controller.selectedTimeFilter.value == 2,
            ),
          ],
        ));
  }

  Widget _buildTabButton(String title, int index, bool isActive) {
    return GestureDetector(
      onTap: () => controller.selectTimeFilter(index),
      child: Container(
        width: 102.h,
        height: 40.h,
        decoration: BoxDecoration(
          color: isActive ? Color(0xFF85D420) : appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(4.h),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyleHelper.instance.body14Bold.copyWith(
                color: isActive ? appTheme.whiteCustom : appTheme.colorFF8089),
          ),
        ),
      ),
    );
  }

  Widget _buildDateRangeSelector() {
    return Obx(() => GestureDetector(
          onTap: () => controller.openDatePicker(),
          child: Container(
            width: 202.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Row(
              children: [
                SizedBox(width: 12.h),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorBlueGray400,
                  height: 16.h,
                  width: 17.h,
                ),
                SizedBox(width: 12.h),
                Text(
                  controller.selectedDateRange.value,
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF8089),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildTransactionList() {
    return Obx(() => ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          itemCount: controller.transactions.length,
          itemBuilder: (context, index) {
            return TransactionItemWidget(
              transaction: controller.transactions[index],
            );
          },
        ));
  }
}
