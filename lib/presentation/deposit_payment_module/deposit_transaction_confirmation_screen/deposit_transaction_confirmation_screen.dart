import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/deposit_transaction_confirmation_controller.dart';

class DepositTransactionConfirmationScreen extends StatelessWidget {
  DepositTransactionConfirmationScreen({Key? key}) : super(key: key);

  final DepositTransactionConfirmationController controller =
      Get.put(DepositTransactionConfirmationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.h),
              _buildSuccessCard(),
              SizedBox(height: 16.h),
              _buildTransactionDetailsCard(),
              SizedBox(height: 24.h),
              _buildInstructionsText(),
              SizedBox(height: 16.h),
              _buildCustomerServiceLink(),
              SizedBox(height: 120.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomActionButtons(),
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
          Positioned(
            top: 36.h,
            left: 146.h,
            child: Container(
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
          ),
          Positioned(
            top: 96.h,
            left: 99.h,
            child: Row(
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
                        top: 0,
                        left: 5.h,
                        child: Text(
                          '₱',
                          style: TextStyleHelper.instance.body13,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8.h),
                Obx(() => Text(
                      controller.depositTransactionConfirmationModel.value
                              ?.amount?.value ??
                          '150.00',
                      style: TextStyleHelper.instance.headline32Medium,
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
        ],
      ),
    );
  }

  Widget _buildTransactionDetailsCard() {
    return Container(
      width: 345.h,
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
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          _buildDetailRow(
              'Deposit method:',
              controller.depositTransactionConfirmationModel.value
                      ?.depositMethod?.value ??
                  'h709394'),
          SizedBox(height: 16.h),
          _buildDetailRow(
              'Deposit Bank:',
              controller.depositTransactionConfirmationModel.value?.depositBank
                      ?.value ??
                  'Union Bank of the Philippines'),
          SizedBox(height: 16.h),
          _buildDetailRow(
              'Payee account name:',
              controller.depositTransactionConfirmationModel.value
                      ?.payeeAccountName?.value ??
                  'Tony'),
          SizedBox(height: 16.h),
          _buildDetailRow(
              'Payee account name (English):',
              controller.depositTransactionConfirmationModel.value
                      ?.payeeAccountNameEnglish?.value ??
                  'Tony'),
          SizedBox(height: 16.h),
          _buildDetailRow(
              'card number:',
              controller.depositTransactionConfirmationModel.value?.cardNumber
                      ?.value ??
                  '109323578177'),
          SizedBox(height: 16.h),
          _buildDetailRow(
              'Deposit amount:',
              controller.depositTransactionConfirmationModel.value
                      ?.depositAmount?.value ??
                  '₱5,000'),
          SizedBox(height: 16.h),
          _buildDetailRow(
              'Order number:',
              controller.depositTransactionConfirmationModel.value?.orderNumber
                      ?.value ??
                  '000000'),
          SizedBox(height: 24.h),
          _buildUploadCertificate(),
          SizedBox(height: 16.h),
          _buildValidityPeriod(),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF4B55),
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: Text(
                  value,
                  textAlign: TextAlign.right,
                  style: TextStyleHelper.instance.body13Bold,
                ),
              ),
              SizedBox(width: 8.h),
              GestureDetector(
                onTap: () => controller.copyToClipboard(value),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup872,
                  height: 12.h,
                  width: 12.h,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildUploadCertificate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'upload certificate:',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.whiteCustom),
        ),
        SizedBox(height: 16.h),
        GestureDetector(
          onTap: () => controller.uploadCertificate(),
          child: Container(
            width: 321.h,
            height: 91.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF1E20,
              borderRadius: BorderRadius.circular(6.h),
            ),
            child: Center(
              child: CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 34.h,
                width: 43.h,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildValidityPeriod() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Validity period:',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF8089),
        ),
        Obx(() => Text(
              controller.depositTransactionConfirmationModel.value
                      ?.validityPeriod?.value ??
                  '00:29:33',
              style: TextStyleHelper.instance.body13Bold
                  .copyWith(color: appTheme.whiteCustom),
            )),
      ],
    );
  }

  Widget _buildInstructionsText() {
    return Text(
      'Once the funds have been deposited, click on "Paid". If you have any questions, please feel free to contact the customer service consultation.',
      style: TextStyleHelper.instance.body12Bold
          .copyWith(color: appTheme.colorFF8089),
    );
  }

  Widget _buildCustomerServiceLink() {
    return GestureDetector(
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
                .copyWith(color: appTheme.colorFF478A),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomActionButtons() {
    return CustomBottomNavigationBar(
      items: [
        CustomBottomBarItem(
          label: 'Problem encountered in payment',
          routeName: '/support',
          fontSize: 14,
        ),
        CustomBottomBarItem(
          label: 'Paid',
          routeName: '/paid',
          isPrimaryAction: true,
          fontSize: 16,
        ),
      ],
      isActionBar: true,
      onItemTapped: (index) => controller.handleBottomAction(index),
    );
  }
}
