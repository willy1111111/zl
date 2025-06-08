import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
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
          _buildFilterSection(),
          Expanded(
            child: _buildFilterSheetAndContent(),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Deposit Record',
      height: 126.h,
      showFilters: true,
      onBackPressed: () => Get.back(),
    );
  }

  Widget _buildFilterSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      child: Row(
        children: [
          _buildFilterItem('Order', false),
          SizedBox(width: 32.h),
          _buildFilterItem('Way', false),
          SizedBox(width: 32.h),
          _buildFilterItem('Today', true),
        ],
      ),
    );
  }

  Widget _buildFilterItem(String text, bool isActive) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyleHelper.instance.body14BoldArial.copyWith(
              color: isActive ? appTheme.whiteCustom : appTheme.colorFF8089),
        ),
        SizedBox(width: 8.h),
        CustomImageView(
          imagePath:
              isActive ? ImageConstant.imgPolygon3 : ImageConstant.imgPolygon1,
          height: 11.h,
          width: 16.h,
        ),
      ],
    );
  }

  Widget _buildFilterSheetAndContent() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.blackCustom,
        borderRadius: BorderRadius.vertical(top: Radius.circular(8.h)),
      ),
      child: Column(
        children: [
          _buildFilterTabs(),
          Expanded(
            child: _buildTransactionList(),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterTabs() {
    return Container(
      margin: EdgeInsets.all(18.h),
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          _buildTabRow(),
          SizedBox(height: 16.h),
          _buildDateRangeSelector(),
        ],
      ),
    );
  }

  Widget _buildTabRow() {
    return Obx(() => Row(
          children: [
            _buildTab('Today', 0),
            SizedBox(width: 8.h),
            _buildTab('Yesterday', 1),
            SizedBox(width: 8.h),
            _buildTab('7-days', 2),
          ],
        ));
  }

  Widget _buildTab(String title, int index) {
    bool isSelected = controller.selectedTabIndex.value == index;

    return GestureDetector(
      onTap: () => controller.selectTab(index),
      child: Container(
        height: 40.h,
        width: 102.h,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF85D420) : appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(4.h),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyleHelper.instance.body14BoldArial.copyWith(
                color:
                    isSelected ? appTheme.whiteCustom : appTheme.colorFF8089),
          ),
        ),
      ),
    );
  }

  Widget _buildDateRangeSelector() {
    return Container(
      height: 40.h,
      width: 202.h,
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
            '2023-05-11~2023-05-14',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF8089),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionList() {
    return Obx(() => ListView.builder(
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
