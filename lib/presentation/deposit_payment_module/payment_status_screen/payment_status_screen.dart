import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/payment_status_controller.dart';

class PaymentStatusScreen extends GetWidget<PaymentStatusController> {
  const PaymentStatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.h),
        child: Column(
          children: [
            SizedBox(height: 12.h),
            _buildSuccessCard(),
            SizedBox(height: 16.h),
            _buildTransactionDetailsCard(),
            SizedBox(height: 32.h),
            _buildActionButtons(),
            SizedBox(height: 32.h),
            _buildCustomerServiceSection(),
          ],
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
    );
  }

  Widget _buildSuccessCard() {
    return Container(
      width: double.infinity,
      height: 200.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      padding: EdgeInsets.all(24.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 54.h,
            height: 54.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF33C3,
              borderRadius: BorderRadius.circular(27.h),
            ),
            child: Center(
              child: CustomImageView(
                imagePath: ImageConstant.img1WhiteA700,
                height: 27.h,
                width: 38.h,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse25,
                    height: 18.h,
                    width: 18.h,
                  ),
                  Positioned(
                    top: 0,
                    left: 5.h,
                    child: Text(
                      '₱',
                      style: TextStyleHelper.instance.body13
                          .copyWith(height: 1.15),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 8.h),
              Obx(() => Text(
                    controller.paymentStatusModel.value.depositAmount?.value ??
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
        ],
      ),
    );
  }

  Widget _buildTransactionDetailsCard() {
    return Container(
      width: double.infinity,
      height: 180.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: Obx(() => Column(
            children: [
              _buildDetailRow(
                'Deposit method:',
                controller.paymentStatusModel.value.transactionDate?.value ??
                    '2023-04-23  11:16:32',
              ),
              SizedBox(height: 16.h),
              _buildDetailRow(
                'Payment channel:',
                controller.paymentStatusModel.value.paymentChannel?.value ??
                    'GCash',
              ),
              SizedBox(height: 16.h),
              _buildDetailRow(
                'Payment channel:',
                controller
                        .paymentStatusModel.value.paymentChannelDetail?.value ??
                    'GCash-xxxx',
              ),
              SizedBox(height: 16.h),
              _buildDetailRowWithCopy(
                'Deposit account:',
                controller.paymentStatusModel.value.depositAccount?.value ??
                    'h709394',
                () => controller.copyDepositAccount(),
              ),
              SizedBox(height: 16.h),
              _buildDetailRowWithCopy(
                'Deposit amount:',
                '₱${controller.paymentStatusModel.value.depositAmountFormatted?.value ?? '5,000'}',
                () => controller.copyDepositAmount(),
              ),
            ],
          )),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF4B55, height: 1.21),
        ),
        Text(
          value,
          style: TextStyleHelper.instance.body13Bold.copyWith(height: 1.15),
        ),
      ],
    );
  }

  Widget _buildDetailRowWithCopy(
      String label, String value, VoidCallback onCopy) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF4B55, height: 1.21),
        ),
        Row(
          children: [
            Text(
              value,
              style: TextStyleHelper.instance.body13Bold.copyWith(height: 1.15),
            ),
            SizedBox(width: 8.h),
            GestureDetector(
              onTap: onCopy,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup872,
                height: 12.h,
                width: 12.h,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => controller.reportPaymentProblem(),
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(6.h),
              ),
              child: Center(
                child: Text(
                  'Problem encountered\nin payment',
                  textAlign: TextAlign.center,
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom, height: 1.0),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 16.h),
        Expanded(
          child: GestureDetector(
            onTap: () => controller.confirmPayment(),
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                ),
                borderRadius: BorderRadius.circular(6.h),
              ),
              child: Center(
                child: Text(
                  'Paid',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(height: 1.19),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCustomerServiceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'If you have any questions, please feel free to contact customer service',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF8089, height: 1.17),
        ),
        SizedBox(height: 16.h),
        GestureDetector(
          onTap: () => controller.contactCustomerService(),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img10,
                height: 15.h,
                width: 14.h,
              ),
              SizedBox(width: 8.h),
              Text(
                'Customer service',
                style: TextStyleHelper.instance.title16Bold
                    .copyWith(color: appTheme.colorFF478A, height: 1.19),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
