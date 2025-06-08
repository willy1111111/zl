import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_dropdown_field.dart';
import '../../../../widgets/custom_edit_text.dart';
import './controller/crypto_wallet_transaction_setup_controller.dart';

class CryptoWalletTransactionSetupScreen
    extends GetWidget<CryptoWalletTransactionSetupController> {
  CryptoWalletTransactionSetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Crypto Wallet',
      height: CustomAppBarHeight.standard,
      onBackPressed: () {
        Get.back();
      },
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            _buildCryptoProductDropdown(),
            SizedBox(height: 16.h),
            _buildWalletAddressField(),
            SizedBox(height: 16.h),
            _buildPasswordInstructions(),
            SizedBox(height: 16.h),
            _buildTransactionPasswordField(),
            SizedBox(height: 16.h),
            _buildConfirmPasswordField(),
            SizedBox(height: 32.h),
            _buildSubmitButton(),
            SizedBox(height: 80.h),
          ],
        ),
      ),
    );
  }

  Widget _buildCryptoProductDropdown() {
    return Column(
      children: [
        Obx(() => CustomDropdownField(
              text: controller.selectedCryptoProduct.value.isNotEmpty == true
                  ? '＊ ${controller.selectedCryptoProduct.value}'
                  : '＊ Crypto Product',
              leadingIcon: ImageConstant.imgSubtractBlueGray400,
              trailingIcon: ImageConstant.imgPolygon1WhiteA700,
              textColor: appTheme.whiteCustom,
              isBold: true,
              backgroundColor: appTheme.colorFF2528,
              borderColor: appTheme.colorFF4B55,
              onTap: () {
                controller.toggleDropdown();
              },
            )),
        Obx(() => controller.isDropdownOpen.value
            ? _buildDropdownOptions()
            : SizedBox.shrink()),
      ],
    );
  }

  Widget _buildDropdownOptions() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 8.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF191B,
        borderRadius: BorderRadius.circular(6.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom.withAlpha(102),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                controller.selectCryptoProduct('USDT(eRC20)');
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: Text(
                  'USDT(eRC20)',
                  style: TextStyleHelper.instance.body14Arial
                      .copyWith(color: appTheme.colorFF8089, height: 1.2),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            GestureDetector(
              onTap: () {
                controller.selectCryptoProduct('USDT(TRC20)');
              },
              child: Container(
                width: double.infinity,
                height: 30.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF85D4,
                  borderRadius: BorderRadius.circular(4.h),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                alignment: Alignment.centerLeft,
                child: Text(
                  'USDT(TRC20)',
                  style: TextStyleHelper.instance.body14Arial
                      .copyWith(color: appTheme.whiteCustom, height: 1.2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWalletAddressField() {
    return CustomEditText(
      controller: controller.walletAddressController,
      placeholder: '＊ Wallet address',
      leadingIcon: ImageConstant.imgSubtractBlueGray40018x18,
      onChanged: (value) {
        controller.updateWalletAddress(value);
      },
    );
  }

  Widget _buildPasswordInstructions() {
    return RichText(
      text: TextSpan(
        style: TextStyleHelper.instance.body12Arial.copyWith(height: 1.2),
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
      onChanged: (value) {
        controller.updateTransactionPassword(value);
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
      onChanged: (value) {
        controller.updateConfirmPassword(value);
      },
      onTrailingTap: () {
        controller.toggleConfirmPasswordVisibility();
      },
    );
  }

  Widget _buildSubmitButton() {
    return CustomButton(
      text: 'Submit',
      variant: CustomButtonVariant.grayGradient,
      width: double.infinity,
      height: 50.h,
      onPressed: () {
        controller.onSubmitPressed();
      },
    );
  }
}
