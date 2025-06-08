import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/g_cash_deposit_record_controller.dart';

class GCashDepositRecordScreen extends GetWidget<GCashDepositRecordController> {
  GCashDepositRecordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Deposit Record',
        height: 68.h,
        onBackPressed: () => Get.back(),
      ),
      body: Obx(() => SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15.h),
              child: Column(
                children: [
                  SizedBox(height: 12.h),
                  _buildAmountCard(),
                  SizedBox(height: 12.h),
                  _buildTransactionDetailsCard(),
                ],
              ),
            ),
          )),
    );
  }

  Widget _buildAmountCard() {
    return Container(
      width: 345.h,
      height: 200.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Stack(
        children: [
          // GCash Logo
          Positioned(
            left: 146.h,
            top: 36.h,
            child: Container(
              width: 54.h,
              height: 54.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27.h),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgIntersect,
                width: 54.h,
                height: 54.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Currency Symbol Background
          Positioned(
            left: 98.h,
            top: 113.h,
            child: SizedBox(
              width: 18.h,
              height: 18.h,
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse25,
                    width: 18.h,
                    height: 18.h,
                  ),
                  Positioned(
                    left: 5.h,
                    top: 0,
                    child: Text(
                      '₱',
                      style: TextStyleHelper.instance.body13Arial
                          .copyWith(height: 1.15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Amount
          Positioned(
            left: 120.h,
            top: 96.h,
            child: Text(
              controller.depositRecord.value?.amount?.value ?? '150.00',
              style: TextStyleHelper.instance.headline32MediumNotoSans
                  .copyWith(height: 1.38),
            ),
          ),
          // Copy Icon
          Positioned(
            left: 229.h,
            top: 114.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup871,
              width: 16.h,
              height: 16.h,
            ),
          ),
          // Status Indicator
          Positioned(
            left: 142.h,
            top: 151.h,
            child: Container(
              width: 6.h,
              height: 6.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF18E0,
                borderRadius: BorderRadius.circular(3.h),
              ),
            ),
          ),
          // Credited Text
          Positioned(
            left: 154.h,
            top: 145.h,
            child: Text(
              controller.depositRecord.value?.status?.value ?? 'Credited',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.colorFF8089, height: 1.17),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionDetailsCard() {
    return Container(
      width: 345.h,
      height: 310.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(15.h),
        child: Column(
          children: [
            _buildDetailRow(
              'Submission time:',
              controller.depositRecord.value?.submissionTime?.value ??
                  '2023-04-23  11:16:32',
            ),
            SizedBox(height: 17.h),
            _buildDetailRow(
              'Deposit method:',
              controller.depositRecord.value?.depositMethod?.value ?? 'GCash',
            ),
            SizedBox(height: 15.h),
            _buildDetailRow(
              'Payment channel:',
              controller.depositRecord.value?.paymentChannel?.value ??
                  'GCash-xxxx',
            ),
            SizedBox(height: 16.h),
            _buildDetailRow(
              'Submit Amount:',
              '₱${controller.depositRecord.value?.amount?.value ?? '150.00'}',
            ),
            SizedBox(height: 16.h),
            _buildDetailRow(
              'Order code:',
              controller.depositRecord.value?.orderCode?.value ?? '000000000',
            ),
            SizedBox(height: 16.h),
            _buildDetailRow(
              'Recorded time:',
              controller.depositRecord.value?.recordedTime?.value ??
                  '2023-04-23  11:16:32',
            ),
            SizedBox(height: 17.h),
            _buildDetailRow(
              'Handling fee:',
              '₱${controller.depositRecord.value?.handlingFee?.value ?? '1.00'}',
            ),
            SizedBox(height: 16.h),
            _buildDetailSingleRow('participate:'),
            SizedBox(height: 15.h),
            _buildDetailSingleRow('Remark:'),
          ],
        ),
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
              .copyWith(color: appTheme.colorFF4B55, height: 1.21),
        ),
        Text(
          value,
          style:
              TextStyleHelper.instance.body13BoldArial2.copyWith(height: 1.15),
        ),
      ],
    );
  }

  Widget _buildDetailSingleRow(String label) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        label,
        style: TextStyleHelper.instance.body14BoldArial
            .copyWith(color: appTheme.colorFF4B55, height: 1.21),
      ),
    );
  }
}
