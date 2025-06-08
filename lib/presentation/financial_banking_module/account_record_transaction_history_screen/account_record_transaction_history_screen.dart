import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_dropdown_field.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/account_record_transaction_history_controller.dart';
import './widgets/transaction_item_widget.dart';

class AccountRecordTransactionHistoryScreen
    extends GetWidget<AccountRecordTransactionHistoryController> {
  AccountRecordTransactionHistoryScreen({Key? key}) : super(key: key);

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
            }),
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 20.h),
              Text('Filter By',
                  style: TextStyleHelper.instance.title16BoldArial),
              SizedBox(height: 24.h),
              _buildFilterSection(),
              SizedBox(height: 24.h),
              Expanded(child: _buildTransactionList()),
            ])));
  }

  Widget _buildFilterSection() {
    return Row(children: [
      CustomDropdownField(
          text: 'Deposits',
          trailingIcon: ImageConstant.imgPolygon1BlueGray700,
          textColor: appTheme.colorFF8089,
          backgroundColor: appTheme.colorFF2528,
          borderColor: appTheme.colorFF2528,
          isBold: true,
          height: 40.h,
          onTap: () {
            controller.onDepositFilterTap();
          }),
      SizedBox(width: 12.h),
      Container(
          height: 40.h,
          width: 194.h,
          decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(6.h),
              boxShadow: [
                BoxShadow(
                    color: appTheme.blackCustom,
                    offset: Offset(0, 4.h),
                    blurRadius: 4.h),
              ]),
          child: Row(children: [
            SizedBox(width: 12.h),
            CustomImageView(
                imagePath: ImageConstant.imgVectorBlueGray40016x17,
                height: 16.h,
                width: 17.h),
            SizedBox(width: 8.h),
            Text('2023-05-11~2023-05-14',
                style: TextStyleHelper.instance.body13BoldArial),
          ])),
    ]);
  }

  Widget _buildTransactionList() {
    return Obx(() => Container(
        decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(8.h),
            boxShadow: [
              BoxShadow(
                  color: appTheme.blackCustom,
                  offset: Offset(0, 4.h),
                  blurRadius: 4.h),
            ]),
        child: ListView.separated(
            itemCount: controller.transactionItems.length,
            separatorBuilder: (context, index) =>
                Container(height: 1.h, color: appTheme.colorFF2528),
            itemBuilder: (context, index) {
              return TransactionItemWidget(
                  transactionItemModel: controller.transactionItems[index]);
            })));
  }
}
