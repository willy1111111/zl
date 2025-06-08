import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/g_cash_deposit_detail_controller.dart';

class GCashDepositDetailScreen extends GetWidget<GCashDepositDetailController> {
  GCashDepositDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
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
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Deposit Record',
      showBackButton: true,
      showStatusBar: true,
      onBackPressed: () => Get.back(),
      backgroundColor: appTheme.colorFF1B1C,
      height: 68.h,
    );
  }

  Widget _buildAmountCard() {
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
      child: Stack(
        children: [
          Positioned(
            top: 20.h,
            left: 130.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgIntersect,
              height: 54.h,
              width: 54.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 80.h,
            left: 83.h,
            child: Row(
              children: [
                Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse25,
                      height: 18.h,
                      width: 18.h,
                    ),
                    Positioned(
                      top: 1.h,
                      left: 5.h,
                      child: Text(
                        '₱',
                        style: TextStyleHelper.instance.body13Arial,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 8.h),
                Obx(() => Text(
                      controller.depositDetailModel.value?.amount?.value ??
                          '150.00',
                      style: TextStyleHelper.instance.headline32MediumNotoSans
                          .copyWith(height: 1.375),
                    )),
                SizedBox(width: 8.h),
                GestureDetector(
                  onTap: () => controller.copyAmount(),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup872,
                    height: 16.h,
                    width: 16.h,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 129.h,
            left: 127.h,
            child: Row(
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
                      controller.depositDetailModel.value?.status?.value ??
                          'Credited',
                      style: TextStyleHelper.instance.body12BoldArial
                          .copyWith(color: appTheme.colorFF8089),
                    )),
              ],
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
      child: Stack(
        children: [
          _buildDetailRow(
            top: 2.h,
            label: 'Submission time:',
            value: controller.depositDetailModel.value?.submissionTime?.value ??
                '2023-04-23  11:16:32',
          ),
          _buildDetailRow(
            top: 35.h,
            label: 'Deposit method:',
            value: controller.depositDetailModel.value?.depositMethod?.value ??
                'GCash',
          ),
          _buildDetailRow(
            top: 67.h,
            label: 'Payment channel:',
            value: controller.depositDetailModel.value?.paymentChannel?.value ??
                'GCash-xxxx',
          ),
          _buildDetailRow(
            top: 98.h,
            label: 'Submit Amount:',
            value:
                '₱${controller.depositDetailModel.value?.amount?.value ?? '150.00'}',
          ),
          _buildDetailRow(
            top: 130.h,
            label: 'Order code:',
            value: controller.depositDetailModel.value?.orderCode?.value ??
                '000000000',
          ),
          _buildDetailRow(
            top: 162.h,
            label: 'Recorded time:',
            value: controller.depositDetailModel.value?.recordedTime?.value ??
                '2023-04-23  11:16:32',
          ),
          _buildDetailRow(
            top: 195.h,
            label: 'Handling fee:',
            value:
                '₱${controller.depositDetailModel.value?.handlingFee?.value ?? '1.00'}',
          ),
          Positioned(
            top: 227.h,
            left: 0,
            child: Text(
              'participate:',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF4B55),
            ),
          ),
          Positioned(
            top: 258.h,
            left: 0,
            child: Text(
              'Remark:',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF4B55),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow({
    required double top,
    required String label,
    required String value,
  }) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF4B55),
          ),
          Text(
            value,
            style: TextStyleHelper.instance.body13BoldArial,
          ),
        ],
      ),
    );
  }
}
