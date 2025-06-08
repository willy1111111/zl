import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/ticket_records_controller.dart';
import './widgets/ticket_record_item_widget.dart';

class TicketRecordsScreen extends GetWidget<TicketRecordsController> {
  TicketRecordsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        appBar: _buildAppBar(),
        body: Container(
            width: double.maxFinite,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 20.h),
              _buildFilterSection(),
              SizedBox(height: 15.h),
              _buildTotalAmount(),
              SizedBox(height: 20.h),
              Expanded(child: _buildTicketRecordsList()),
            ])));
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: 'Ticket Records',
        leadingIcon: ImageConstant.imgStroke,
        onLeadingPressed: () {
          Get.back();
        },
        backgroundColor: appTheme.colorFF1B1C,
        showStatusBar: true,
        statusBarIcon: ImageConstant.img1);
  }

  Widget _buildFilterSection() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(children: [
          _buildAllFilter(),
          SizedBox(width: 12.h),
          _buildDateRangeFilter(),
        ]));
  }

  Widget _buildAllFilter() {
    return GestureDetector(
        onTap: () => controller.onAllFilterTap(),
        child: Container(
            width: 139.h,
            height: 40.h,
            decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(6.h),
                boxShadow: [
                  BoxShadow(
                      color: appTheme.colorFF0000,
                      spreadRadius: 0,
                      blurRadius: 4.h,
                      offset: Offset(0, 4.h)),
                ]),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(() => Text(controller.selectedFilter!.value ?? 'All',
                          style: TextStyleHelper.instance.body13BoldArial
                              .copyWith(color: appTheme.colorFF8089))),
                      CustomImageView(
                          imagePath: ImageConstant.imgPolygon1,
                          height: 11.h,
                          width: 13.h),
                    ]))));
  }

  Widget _buildDateRangeFilter() {
    return GestureDetector(
        onTap: () => controller.onDatePickerTap(),
        child: Container(
            width: 194.h,
            height: 40.h,
            decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(6.h),
                boxShadow: [
                  BoxShadow(
                      color: appTheme.colorFF0000,
                      spreadRadius: 0,
                      blurRadius: 4.h,
                      offset: Offset(0, 4.h)),
                ]),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.h),
                child: Row(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgVectorBlueGray40016x17,
                      height: 16.h,
                      width: 17.h),
                  SizedBox(width: 8.h),
                  Obx(() => Text(
                      controller.selectedDateRange!.value ??
                          '2023-05-11~2023-05-14',
                      style: TextStyleHelper.instance.body13BoldArial
                          .copyWith(color: appTheme.colorFF8089))),
                ]))));
  }

  Widget _buildTotalAmount() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Obx(() => Text(
            'Total Amount: ${controller.totalAmount!.value ?? '10.00'}',
            style: TextStyleHelper.instance.title16BoldArial
                .copyWith(color: appTheme.whiteCustom))));
  }

  Widget _buildTicketRecordsList() {
    return Obx(() => ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        itemCount: controller.ticketRecords.length,
        separatorBuilder: (context, index) => SizedBox(height: 15.h),
        itemBuilder: (context, index) {
          return TicketRecordItemWidget(
              ticketRecord: controller.ticketRecords[index]);
        }));
  }
}
