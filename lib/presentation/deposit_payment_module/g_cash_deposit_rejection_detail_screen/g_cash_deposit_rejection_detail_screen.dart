import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/gcash_deposit_rejection_detail_controller.dart';

class GCashDepositRejectionDetailScreen
    extends GetWidget<GCashDepositRejectionDetailController> {
  GCashDepositRejectionDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Deposit Record',
        showBackButton: true,
        showStatusBar: true,
        onBackPressed: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.h),
          child: Column(
            children: [
              SizedBox(height: 12.h),
              _buildTransactionSummaryCard(),
              SizedBox(height: 12.h),
              _buildTransactionDetailsCard(),
              SizedBox(height: 8.h),
              _buildNoticeCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTransactionSummaryCard() {
    return Container(
      width: 345.h,
      height: 200.h,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color888888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 36.h),
          CustomImageView(
            imagePath: ImageConstant.imgIntersect,
            height: 54.h,
            width: 54.h,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 6.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 18.h,
                height: 18.h,
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse25,
                      height: 18.h,
                      width: 18.h,
                    ),
                    Positioned(
                      left: 5.h,
                      child: Text(
                        '₱',
                        style: TextStyleHelper.instance.body13Arial,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 4.h),
              Obx(() => Text(
                    controller.depositAmount.value,
                    style: TextStyleHelper.instance.headline32MediumNotoSans,
                  )),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup872,
                height: 16.h,
                width: 16.h,
              ),
            ],
          ),
          SizedBox(height: 28.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 6.h,
                height: 6.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF18E0,
                  borderRadius: BorderRadius.circular(3.h),
                ),
              ),
              SizedBox(width: 8.h),
              Obx(() => Text(
                    controller.transactionStatus.value,
                    style: TextStyleHelper.instance.body12BoldArial
                        .copyWith(color: appTheme.colorFF8089),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionDetailsCard() {
    return Container(
      width: 345.h,
      padding: EdgeInsets.all(15.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color888888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Column(
        children: [
          _buildDetailRow('Submission time:', controller.submissionTime.value),
          SizedBox(height: 15.h),
          _buildDetailRow('Deposit method:', controller.depositMethod.value),
          SizedBox(height: 15.h),
          _buildDetailRow('Payment channel:', controller.paymentChannel.value),
          SizedBox(height: 15.h),
          _buildDetailRow('Submit Amount:', controller.submitAmount.value),
          SizedBox(height: 15.h),
          _buildDetailRow('Order code:', controller.orderCode.value),
          SizedBox(height: 15.h),
          _buildDetailRow('Recorded time:', controller.recordedTime.value),
          SizedBox(height: 15.h),
          _buildDetailRow('Handling fee:', controller.handlingFee.value),
          SizedBox(height: 15.h),
          _buildDetailRow('participate:', ''),
          SizedBox(height: 15.h),
          _buildDetailRow('Remark:', ''),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyleHelper.instance.body14BoldArial
              .copyWith(color: appTheme.colorFF4B55),
        ),
        Flexible(
          child: Text(
            value,
            style: TextStyleHelper.instance.body13BoldArial,
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }

  Widget _buildNoticeCard() {
    return Container(
      width: 345.h,
      height: 129.h,
      padding: EdgeInsets.all(9.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Obx(() => Text(
            controller.noticeMessage.value,
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF8089, height: 1.0),
          )),
    );
  }
}
