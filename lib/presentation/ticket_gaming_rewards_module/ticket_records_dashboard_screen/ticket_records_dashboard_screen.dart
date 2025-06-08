import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/ticket_records_dashboard_controller.dart';

class TicketRecordsDashboardScreen
    extends GetWidget<TicketRecordsDashboardController> {
  const TicketRecordsDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        appBar: CustomAppBar(
            title: 'Ticket Records',
            showBackButton: true,
            height: 78.h,
            backgroundColor: appTheme.colorFF1B1C,
            statusBarImagePath: ImageConstant.img1Black900,
            onBackPressed: () {
              Get.back();
            }),
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 20.h),
              _buildFilterSection(),
              SizedBox(height: 13.h),
              _buildTotalAmountSection(),
              SizedBox(height: 55.h),
              _buildEmptyStateSection(),
            ])));
  }

  /// Section Widget - Filter Section
  Widget _buildFilterSection() {
    return Row(children: [
      Obx(() => GestureDetector(
          onTap: () => controller.onFilterDropdownTap(),
          child: Container(
              width: 139.h,
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
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(controller.selectedFilter!.value ?? 'All',
                        style: TextStyleHelper.instance.body13BoldArial),
                    CustomImageView(
                        imagePath: ImageConstant.imgPolygon1,
                        height: 11.h,
                        width: 13.h),
                  ])))),
      SizedBox(width: 12.h),
      Obx(() => GestureDetector(
          onTap: () => controller.onDatePickerTap(),
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
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgVectorBlueGray400,
                    height: 16.h,
                    width: 17.h),
                SizedBox(width: 8.h),
                Text(
                    controller.selectedDateRange!.value ??
                        '2023-05-11~2023-05-14',
                    style: TextStyleHelper.instance.body13BoldArial),
              ])))),
    ]);
  }

  /// Section Widget - Total Amount Section
  Widget _buildTotalAmountSection() {
    return Obx(() => Text(
        'Total Amount: ${controller.totalAmount!.value ?? '0.00'}',
        style: TextStyleHelper.instance.title16BoldArial
            .copyWith(color: appTheme.whiteCustom)));
  }

  /// Section Widget - Empty State Section
  Widget _buildEmptyStateSection() {
    return Expanded(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgGroup278,
          height: 184.h,
          width: 240.h,
          fit: BoxFit.contain),
      SizedBox(height: 5.h),
      Text('Oops! There is no data yet!',
          style: TextStyleHelper.instance.body14BoldArial
              .copyWith(color: appTheme.colorFF8089),
          textAlign: TextAlign.center),
    ]));
  }
}
