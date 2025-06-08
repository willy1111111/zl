import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_dropdown_field.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/account_record_controller.dart';

class AccountRecordScreen extends GetWidget<AccountRecordController> {
  const AccountRecordScreen({Key? key}) : super(key: key);

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
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 14.h),
              _buildFilterSection(),
              SizedBox(height: 30.h),
              _buildNoDataSection(),
            ])));
  }

  Widget _buildFilterSection() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Filter By', style: TextStyleHelper.instance.title16BoldArial),
      SizedBox(height: 8.h),
      Row(children: [
        CustomDropdownField(
            text: 'Deposits',
            trailingIcon: ImageConstant.imgPolygon1BlueGray700,
            textColor: appTheme.colorFF8089,
            backgroundColor: appTheme.colorFF2528,
            borderColor: appTheme.colorFF4B55,
            isBold: true,
            height: 40.h,
            onTap: () {
              controller.onDepositsDropdownTap();
            }),
        SizedBox(width: 12.h),
        GestureDetector(
            onTap: () {
              controller.onDatePickerTap();
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
                          blurRadius: 4),
                    ]),
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Row(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgVectorBlueGray40016x17,
                      height: 16.h,
                      width: 17.h),
                  SizedBox(width: 8.h),
                  Obx(() => Text(
                      controller.dateRange!.value ?? '2023-05-11~2023-05-14',
                      style: TextStyleHelper.instance.body13BoldArial)),
                ]))),
      ]),
    ]);
  }

  Widget _buildNoDataSection() {
    return Container(
        width: 345.h,
        height: 444.h,
        decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(8.h)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgGroup278,
              height: 184.h,
              width: 240.h),
          SizedBox(height: 32.h),
          Text('No data',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089)),
        ]));
  }
}
