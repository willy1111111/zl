import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/deposit_confirmation_controller.dart';

class DepositConfirmationScreen extends StatelessWidget {
  DepositConfirmationScreen({Key? key}) : super(key: key);

  final DepositConfirmationController controller =
      Get.put(DepositConfirmationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          children: [
            SizedBox(height: 12.h),
            _buildSuccessCard(),
            SizedBox(height: 24.h),
            _buildDepositDetailsCard(),
            SizedBox(height: 24.h),
            _buildTipsSection(),
            Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomActionBar(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Deposit Record',
      showBackButton: true,
      backgroundColor: appTheme.colorFF1B1C,
      onBackPressed: () => Get.back(),
    );
  }

  Widget _buildSuccessCard() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup12490,
            height: 54.h,
            width: 54.h,
          ),
          SizedBox(height: 16.h),
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
                      top: 0,
                      left: 5.h,
                      child: Text(
                        '₱',
                        style: TextStyleHelper.instance.body13Arial
                            .copyWith(height: 1.15),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.h),
              Obx(() => Text(
                    controller.depositConfirmationModel.value?.amount?.value ??
                        '50000',
                    style: TextStyleHelper.instance.headline32MediumNotoSans
                        .copyWith(height: 1.38),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDepositDetailsCard() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildDetailRow(
            'Deposit account:',
            controller.depositConfirmationModel.value?.depositAccount?.value ??
                'h709394',
          ),
          SizedBox(height: 16.h),
          _buildDetailRow(
            'Deposit amount:',
            '₱${controller.depositConfirmationModel.value?.depositAmount?.value ?? '5,000'}',
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyleHelper.instance.body14BoldArial
              .copyWith(color: appTheme.colorFF4B55, height: 1.21),
        ),
        Row(
          children: [
            Text(
              value,
              style: TextStyleHelper.instance.body13BoldArial
                  .copyWith(height: 1.15),
            ),
            SizedBox(width: 8.h),
            GestureDetector(
              onTap: () => controller.onCopyPressed(value),
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

  Widget _buildTipsSection() {
    return Container(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tips:',
            style: TextStyleHelper.instance.title16BoldArial
                .copyWith(height: 1.19),
          ),
          SizedBox(height: 16.h),
          Text(
            '-After the funds were transferred,kindly click onthe "Complete deposit" button\n-Feel free to contact us if you have any questions',
            style: TextStyleHelper.instance.body14Arial.copyWith(height: 1.29),
          ),
          SizedBox(height: 16.h),
          GestureDetector(
            onTap: () => controller.onCustomerServicePressed(),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img10Blue400,
                  height: 15.h,
                  width: 14.h,
                ),
                SizedBox(width: 8.h),
                Text(
                  'Customer service',
                  style: TextStyleHelper.instance.title16Arial.copyWith(
                      height: 1.19, decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomActionBar() {
    return CustomBottomNavigationBar(
      items: [
        CustomBottomBarItem(
          label: 'Transaction record',
          routeName: AppRoutes.depositRecordListScreen,
          fontSize: 14,
        ),
        CustomBottomBarItem(
          label: 'Complete deposit',
          routeName: AppRoutes.depositTransactionConfirmationScreen,
          isPrimaryAction: true,
          fontSize: 16,
        ),
        CustomBottomBarItem(
          label: 'Another',
          routeName: AppRoutes.walletDepositScreen,
          fontSize: 14,
        ),
      ],
      isActionBar: true,
      height: 98.h,
      backgroundColor: appTheme.colorFF478A,
      onItemTapped: (index) => controller.onBottomBarPressed(index),
    );
  }
}
