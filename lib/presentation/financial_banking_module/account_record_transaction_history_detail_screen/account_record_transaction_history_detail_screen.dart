import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_dropdown_field.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/account_record_transaction_history_detail_controller.dart';
import './widgets/transaction_item_widget.dart';

class AccountRecordTransactionHistoryDetailScreen
    extends GetWidget<AccountRecordTransactionHistoryDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Account Record',
        showBackButton: true,
        showBalance: true,
        balanceAmount: '₱1980.00',
        onBackPressed: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFilterBySection(),
              SizedBox(height: 14.h),
              _buildFilterControls(),
              SizedBox(height: 12.h),
              _buildTransactionList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterBySection() {
    return Text(
      'Filter By',
      style: TextStyleHelper.instance.title16Bold,
    );
  }

  Widget _buildFilterControls() {
    return Row(
      children: [
        CustomDropdownField(
          text: 'Withdrawal',
          trailingIcon: ImageConstant.imgPolygon1BlueGray700,
          textColor: appTheme.colorFF8089,
          backgroundColor: appTheme.colorFF2528,
          borderColor: appTheme.colorFF2528,
          isBold: true,
          height: 40.h,
          onTap: () {
            controller.onWithdrawalFilterTap();
          },
        ),
        SizedBox(width: 12.h),
        GestureDetector(
          onTap: () {
            controller.onDateRangeFilterTap();
          },
          child: Container(
            width: 194.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(6.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.blackCustom,
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorBlueGray40016x17,
                  height: 16.h,
                  width: 17.h,
                ),
                SizedBox(width: 8.h),
                Text(
                  '2023-05-11~2023-05-14',
                  style: TextStyleHelper.instance.body13Bold,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTransactionList() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom,
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: [
          Obx(() => ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.transactions.length,
                separatorBuilder: (context, index) => Container(
                  height: 1.h,
                  color: appTheme.colorFF2528,
                ),
                itemBuilder: (context, index) {
                  return TransactionItemWidget(
                    transaction: controller.transactions[index],
                  );
                },
              )),
          _buildPaginationControls(),
        ],
      ),
    );
  }

  Widget _buildPaginationControls() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8.h),
          bottomRight: Radius.circular(8.h),
        ),
      ),
      padding: EdgeInsets.all(19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: 'Previous',
            variant: CustomButtonVariant.textOnly,
            textColor: appTheme.colorFF8089,
            onPressed: () {
              controller.onPreviousPressed();
            },
          ),
          SizedBox(width: 64.h),
          CustomButton(
            text: 'Next',
            variant: CustomButtonVariant.textOnly,
            textColor: appTheme.whiteCustom,
            onPressed: () {
              controller.onNextPressed();
            },
          ),
        ],
      ),
    );
  }
}
