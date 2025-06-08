import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/forgot_transaction_password_controller.dart';

class ForgotTransactionPasswordScreen
    extends GetWidget<ForgotTransactionPasswordController> {
  const ForgotTransactionPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Forgot transaction password',
        leadingIcon: ImageConstant.img,
        onLeadingPressed: () => Get.back(),
        backgroundColor: appTheme.colorFF1B1C,
      ),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDescriptionText(),
            SizedBox(height: 24.h),
            _buildPhoneNumberInput(),
            SizedBox(height: 20.h),
            _buildSmsOption(),
            SizedBox(height: 20.h),
            _buildNewPasswordInput(),
            SizedBox(height: 20.h),
            _buildConfirmPasswordInput(),
            Spacer(),
            _buildConfirmButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionText() {
    return Text(
      'Please retrieve your password in the following ways',
      style: TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
    );
  }

  Widget _buildPhoneNumberInput() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2C2F,
        border: Border.all(color: appTheme.colorFF4B55),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 17.h,
            width: 13.h,
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath:
                ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
            height: 18.h,
            width: 26.h,
          ),
          SizedBox(width: 8.h),
          Text(
            '+55',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(width: 8.h),
          Container(
            width: 1.h,
            height: 24.h,
            color: appTheme.colorFF4453,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Obx(() => TextFormField(
                  controller: controller.phoneController,
                  style: TextStyleHelper.instance.body14Bold,
                  decoration: InputDecoration(
                    hintText: 'Phone number',
                    hintStyle: TextStyleHelper.instance.body14Bold,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                  keyboardType: TextInputType.phone,
                  onChanged: (value) => controller.updatePhoneNumber(value),
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildSmsOption() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4B55),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img1BlueGray400,
            height: 17.h,
            width: 15.h,
          ),
          SizedBox(width: 12.h),
          Text(
            'SMS',
            style: TextStyleHelper.instance.body14Bold,
          ),
          Spacer(),
          Obx(() => GestureDetector(
                onTap: () => controller.sendSms(),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.h),
                  decoration: BoxDecoration(
                    color: appTheme.colorFF232B,
                    border: Border.all(color: appTheme.colorFF6A73),
                    borderRadius: BorderRadius.circular(4.h),
                  ),
                  child: Text(
                    'send',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF555E),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildNewPasswordInput() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4B55),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlueGray40017x14,
            height: 17.h,
            width: 14.h,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Obx(() => TextFormField(
                  controller: controller.newPasswordController,
                  obscureText:
                      !(controller.isNewPasswordVisible.value ?? false),
                  style: TextStyleHelper.instance.body14Bold,
                  decoration: InputDecoration(
                    hintText: 'Set new transaction password',
                    hintStyle: TextStyleHelper.instance.body14Bold,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                  onChanged: (value) => controller.updateNewPassword(value),
                )),
          ),
          SizedBox(width: 12.h),
          Obx(() => GestureDetector(
                onTap: () => controller.toggleNewPasswordVisibility(),
                child: CustomImageView(
                  imagePath: ImageConstant.img8,
                  height: 13.h,
                  width: 20.h,
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildConfirmPasswordInput() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4B55),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlueGray40017x14,
            height: 17.h,
            width: 14.h,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Obx(() => TextFormField(
                  controller: controller.confirmPasswordController,
                  obscureText:
                      !(controller.isConfirmPasswordVisible.value ?? false),
                  style: TextStyleHelper.instance.body14Bold,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: TextStyleHelper.instance.body14Bold,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                  onChanged: (value) => controller.updateConfirmPassword(value),
                )),
          ),
          SizedBox(width: 12.h),
          Obx(() => GestureDetector(
                onTap: () => controller.toggleConfirmPasswordVisibility(),
                child: CustomImageView(
                  imagePath: ImageConstant.img8,
                  height: 13.h,
                  width: 20.h,
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildConfirmButton() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 7.h),
      child: Obx(() => CustomButton(
            text: 'Confirm',
            onPressed: () => controller.confirmPasswordReset(),
            width: 322.h,
            height: 50.h,
            backgroundColor: appTheme.transparentCustom,
            textColor: appTheme.colorFF8089,
            hasShadow: true,
          )),
    );
  }
}
