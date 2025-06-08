import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_dropdown_field.dart';
import '../../../../widgets/custom_edit_text.dart';
import './controller/crypto_wallet_setup_password_controller.dart';

class CryptoWalletSetupPasswordScreen
    extends GetWidget<CryptoWalletSetupPasswordController> {
  const CryptoWalletSetupPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 9.h),
            _buildCryptoProductSection(),
            SizedBox(height: 24.h),
            _buildWalletAddressSection(),
            SizedBox(height: 24.h),
            _buildTransactionPasswordSection(),
            SizedBox(height: 32.h),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Crypto Wallet',
      height: CustomAppBarHeight.standard,
      onBackPressed: () => Get.back(),
    );
  }

  Widget _buildCryptoProductSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Crypto Product',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
            Text(
              '＊',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFFE031),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Obx(() => CustomDropdownField(
              text: controller.selectedCryptoProduct.value.isEmpty == true
                  ? 'Crypto Product'
                  : controller.selectedCryptoProduct.value,
              leadingIcon: ImageConstant.imgSubtractBlueGray400,
              trailingIcon: ImageConstant.imgPolygon1WhiteA700,
              textColor: controller.selectedCryptoProduct.value.isEmpty == true
                  ? Color(0xFF808994)
                  : appTheme.whiteCustom,
              isBold: controller.selectedCryptoProduct.value.isNotEmpty == true,
              onTap: () => controller.onCryptoProductTap(),
            )),
      ],
    );
  }

  Widget _buildWalletAddressSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Wallet address',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
            Text(
              '＊',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFFE031),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        CustomEditText(
          controller: controller.walletAddressController,
          placeholder: 'Wallet address',
          leadingIcon: ImageConstant.imgSubtractBlueGray40018x18,
          onChanged: (value) => controller.onWalletAddressChanged(value),
        ),
      ],
    );
  }

  Widget _buildTransactionPasswordSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Please set up your transaction password',
              style: TextStyleHelper.instance.body12,
            ),
            Text(
              '＊',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFFE031),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        CustomEditText(
          controller: controller.transactionPasswordController,
          placeholder: 'Set transaction password',
          leadingIcon: ImageConstant.imgVectorBlueGray40017x14,
          trailingIcon: ImageConstant.img3,
          isPassword: true,
          onChanged: (value) => controller.onTransactionPasswordChanged(value),
          onTrailingTap: () => controller.togglePasswordVisibility(),
          margin: EdgeInsets.only(bottom: 16.h),
        ),
        CustomEditText(
          controller: controller.confirmPasswordController,
          placeholder: 'Confirm password',
          leadingIcon: ImageConstant.imgVectorBlueGray40017x14,
          trailingIcon: ImageConstant.img4,
          isPassword: true,
          onChanged: (value) => controller.onConfirmPasswordChanged(value),
          onTrailingTap: () => controller.toggleConfirmPasswordVisibility(),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return Obx(() => CustomButton(
          text: 'Submit',
          variant: CustomButtonVariant.grayGradient,
          width: double.maxFinite,
          onPressed:
              controller.isFormValid.value ? () => controller.onSubmit() : null,
        ));
  }
}
