import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_dropdown_field.dart';
import './controller/betting_record_history_controller.dart';
import './models/betting_record_item_model.dart';
import './widgets/betting_record_item_widget.dart';

class BettingRecordHistoryScreen
    extends GetWidget<BettingRecordHistoryController> {
  BettingRecordHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.h),
        child: CustomAppBar(
          title: 'Betting Record',
          showBalance: true,
          balanceAmount: '₱1980.00',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Column(
            children: [
              SizedBox(height: 16.h),
              _buildDateFilter(),
              SizedBox(height: 12.h),
              _buildBettingRecordsTable(),
            ],
          ),
        ),
      ),
    );
  }

  /// Date filter dropdown section
  Widget _buildDateFilter() {
    return CustomDropdownField(
      text: '2023-05-11',
      leadingIcon: ImageConstant.imgVectorBlueGray40016x17,
      trailingIcon: ImageConstant.imgPolygon1BlueGray700,
      textColor: appTheme.colorFF8089,
      isBold: true,
      height: 40.h,
      onTap: () {
        controller.onDateFilterTap();
      },
    );
  }

  /// Betting records table with header and list
  Widget _buildBettingRecordsTable() {
    return Container(
      width: 345.h,
      height: 637.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF0000,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          Expanded(
            child: _buildBettingRecordsList(),
          ),
          _buildPaginationControls(),
        ],
      ),
    );
  }

  /// Table header with column titles
  Widget _buildTableHeader() {
    return Container(
      width: double.maxFinite,
      height: 39.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2B31,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.h),
          topRight: Radius.circular(12.h),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h),
        child: Row(
          children: [
            Text(
              'Game',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
            SizedBox(width: 87.h),
            Text(
              'Bet Amount',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
            SizedBox(width: 46.h),
            Text(
              'PayOut',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ),
      ),
    );
  }

  /// List of betting records
  Widget _buildBettingRecordsList() {
    return Obx(() => ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 8.h),
          itemCount: controller.bettingRecords.length,
          itemBuilder: (context, index) {
            BettingRecordItemModel bettingRecord =
                controller.bettingRecords[index];
            return BettingRecordItemWidget(
              bettingRecord: bettingRecord,
              isLastItem: index == controller.bettingRecords.length - 1,
            );
          },
        ));
  }

  /// Pagination controls at bottom
  Widget _buildPaginationControls() {
    return Container(
      padding: EdgeInsets.only(bottom: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              controller.onPreviousPage();
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
              child: Text(
                'Previous',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
          SizedBox(width: 64.h),
          GestureDetector(
            onTap: () {
              controller.onNextPage();
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
              child: Text(
                'Next',
                style: TextStyleHelper.instance.title16Bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
