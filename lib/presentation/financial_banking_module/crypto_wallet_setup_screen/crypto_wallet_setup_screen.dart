import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_dropdown_field.dart';
import '../../../../widgets/custom_edit_text.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/crypto_wallet_setup_controller.dart';

class CryptoWalletSetupScreen extends GetWidget<CryptoWalletSetupController> {
  const CryptoWalletSetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Crypto Wallet',
        height: CustomAppBarHeight.standard,
        onBackPressed: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              _buildCryptoProductDropdown(),
              SizedBox(height: 16.h),
              _buildWalletAddressField(),
              SizedBox(height: 16.h),
              _buildPasswordInstructions(),
              SizedBox(height: 8.h),
              _buildTransactionPasswordField(),
              SizedBox(height: 16.h),
              _buildConfirmPasswordField(),
              SizedBox(height: 32.h),
              _buildSubmitButton(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCryptoProductDropdown() {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomDropdownField(
              text: '＊ Crypto Product',
              leadingIcon: ImageConstant.imgSubtractBlueGray400,
              trailingIcon: ImageConstant.imgPolygon1WhiteA700,
              textColor: appTheme.colorFF8089,
              isBold: true,
              onTap: () {
                controller.toggleDropdown();
              },
            ),
            if (controller.isDropdownVisible.value) ...[
              SizedBox(height: 4.h),
              _buildDropdownMenu(),
            ],
          ],
        ));
  }

  Widget _buildDropdownMenu() {
    return Container(
      width: 345.h,
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF191B,
        borderRadius: BorderRadius.circular(6.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF0000,
            blurRadius: 6.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              controller.selectCryptoProduct('USDT(eRC20)');
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text(
                'USDT(eRC20)',
                style: TextStyleHelper.instance.body14Arial
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              controller.selectCryptoProduct('USDT(TRC20)');
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text(
                'USDT(TRC20)',
                style: TextStyleHelper.instance.body14Arial
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWalletAddressField() {
    return Container(
      width: 345.h,
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(
          color: appTheme.colorFF4B55,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Row(
        children: [
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgSubtractBlueGray40018x18,
            height: 18.h,
            width: 18.h,
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: TextFormField(
              controller: controller.walletAddressController,
              style: TextStyleHelper.instance.body14Arial
                  .copyWith(color: appTheme.whiteCustom),
              decoration: InputDecoration(
                hintText: '＊ Wallet address',
                hintStyle: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.colorFF8089),
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
              onChanged: (value) {
                controller.onWalletAddressChanged(value);
              },
            ),
          ),
          SizedBox(width: 12.h),
        ],
      ),
    );
  }

  Widget _buildPasswordInstructions() {
    return RichText(
      text: TextSpan(
        style: TextStyleHelper.instance.body12Arial,
        children: [
          TextSpan(
            text: 'Please set up your transaction password  ',
            style: TextStyleHelper.instance.textStyle15,
          ),
          TextSpan(
            text: '＊',
            style: TextStyleHelper.instance.bodyTextBold
                .copyWith(color: appTheme.colorFFE031),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionPasswordField() {
    return CustomEditText(
      controller: controller.transactionPasswordController,
      placeholder: 'Set transaction password',
      leadingIcon: ImageConstant.imgVectorBlueGray40017x14,
      trailingIcon: ImageConstant.img3,
      isPassword: true,
      width: 345.h,
      onChanged: (value) {
        controller.onTransactionPasswordChanged(value);
      },
      onTrailingTap: () {
        controller.toggleTransactionPasswordVisibility();
      },
    );
  }

  Widget _buildConfirmPasswordField() {
    return CustomEditText(
      controller: controller.confirmPasswordController,
      placeholder: 'Confirm password',
      leadingIcon: ImageConstant.imgVectorBlueGray40017x14,
      trailingIcon: ImageConstant.img4,
      isPassword: true,
      width: 345.h,
      onChanged: (value) {
        controller.onConfirmPasswordChanged(value);
      },
      onTrailingTap: () {
        controller.toggleConfirmPasswordVisibility();
      },
    );
  }

  Widget _buildSubmitButton() {
    return Center(
      child: CustomButton(
        text: 'Submit',
        variant: CustomButtonVariant.grayGradient,
        width: 322.h,
        onPressed: () {
          controller.onSubmitPressed();
        },
      ),
    );
  }
}
