import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/g_cash_deposit_record_detail_controller.dart';

class GCashDepositRecordDetailScreen
    extends GetWidget<GCashDepositRecordDetailController> {
  GCashDepositRecordDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        appBar: _buildAppBar(),
        body: SafeArea(
            child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
                child: Column(children: [
                  _buildTransactionSummaryCard(),
                  SizedBox(height: 16.h),
                  _buildTransactionDetailsCard(),
                  SizedBox(height: 16.h),
                  _buildNoticeCard(),
                ]))));
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: 'Deposit Record', onBackPressed: () => Get.back());
  }

  Widget _buildTransactionSummaryCard() {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(8.h),
            boxShadow: [
              BoxShadow(
                  color: appTheme.colorFF8888,
                  offset: Offset(0, 4.h),
                  blurRadius: 4.h),
            ]),
        padding: EdgeInsets.all(24.h),
        child: Column(children: [
          CustomImageView(
              imagePath: ImageConstant.imgIntersect,
              height: 54.h,
              width: 54.h,
              radius: BorderRadius.circular(27.h)),
          SizedBox(height: 16.h),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                width: 18.h,
                height: 18.h,
                child: Stack(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse25,
                      height: 18.h,
                      width: 18.h),
                  Positioned(
                      top: 0,
                      left: 5.h,
                      child: Text('₱',
                          style: TextStyleHelper.instance.body13RegularArial)),
                ])),
            SizedBox(width: 8.h),
            Obx(() => Text(controller.transactionAmount!.value ?? '150.00',
                style: TextStyleHelper.instance.headline32MediumNotoSans
                    .copyWith(height: 1.375))),
            SizedBox(width: 8.h),
            CustomImageView(
                imagePath: ImageConstant.imgGroup871,
                height: 16.h,
                width: 16.h),
          ]),
          SizedBox(height: 8.h),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                width: 6.h,
                height: 6.h,
                decoration: BoxDecoration(
                    color: appTheme.colorFF18E0,
                    borderRadius: BorderRadius.circular(3.h))),
            SizedBox(width: 8.h),
            Obx(() => Text(controller.transactionStatus!.value ?? 'Credited',
                style: TextStyleHelper.instance.body12BoldArial2)),
          ]),
        ]));
  }

  Widget _buildTransactionDetailsCard() {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(8.h),
            boxShadow: [
              BoxShadow(
                  color: appTheme.colorFF8888,
                  offset: Offset(0, 4.h),
                  blurRadius: 4.h),
            ]),
        padding: EdgeInsets.all(16.h),
        child: Column(children: [
          _buildDetailRow('Submission time:',
              controller.submissionTime!.value ?? '2023-04-23  11:16:32'),
          SizedBox(height: 16.h),
          _buildDetailRow(
              'Deposit method:', controller.depositMethod!.value ?? 'GCash'),
          SizedBox(height: 16.h),
          _buildDetailRow('Payment channel:',
              controller.paymentChannel!.value ?? 'GCash-xxxx'),
          SizedBox(height: 16.h),
          _buildDetailRow(
              'Submit Amount:', controller.submitAmount!.value ?? '₱150.00'),
          SizedBox(height: 16.h),
          _buildDetailRow(
              'Order code:', controller.orderCode!.value ?? '000000000'),
          SizedBox(height: 16.h),
          _buildDetailRow('Recorded time:',
              controller.recordedTime!.value ?? '2023-04-23  11:16:32'),
          SizedBox(height: 16.h),
          _buildDetailRow(
              'Handling fee:', controller.handlingFee!.value ?? '₱1.00'),
          SizedBox(height: 16.h),
          _buildDetailRow('participate:', ''),
          SizedBox(height: 16.h),
          _buildDetailRow('Remark:', ''),
        ]));
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyleHelper.instance.body14BoldArial2
                  .copyWith(color: appTheme.colorFF4B55)),
          Flexible(
              child: Text(value,
                  style: TextStyleHelper.instance.body13BoldArial,
                  textAlign: TextAlign.right)),
        ]);
  }

  Widget _buildNoticeCard() {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(8.h)),
        padding: EdgeInsets.all(16.h),
        child: Obx(() => Text(
            controller.noticeMessage!.value ??
                'Dear, we are unable to transfer your account limitPlease change your WITHDRAWAL account or useother methods to withdraw cash.',
            style: TextStyleHelper.instance.body14BoldArial2
                .copyWith(height: 1.0))));
  }
}
