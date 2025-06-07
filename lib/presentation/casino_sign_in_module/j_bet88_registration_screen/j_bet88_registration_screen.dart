import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_field.dart';
import './controller/j_bet88_registration_controller.dart';

class JBet88RegistrationScreen extends GetWidget<JBet88RegistrationController> {
  JBet88RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1A1C,
      appBar: CustomAppBar(
        title: 'Register',
        showBackButton: true,
        height: 60.h,
        onBackPressed: () => Get.back(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 28.h),
            _buildLogoSection(),
            SizedBox(height: 26.h),
            _buildPhoneNumberInput(),
            SizedBox(height: 12.h),
            _buildPasswordInput(),
            SizedBox(height: 12.h),
            _buildReferralSection(),
            SizedBox(height: 12.h),
            _buildAgreementCheckboxes(),
            SizedBox(height: 24.h),
            _buildRegisterButton(),
            SizedBox(height: 16.h),
            _buildForgotPasswordAndLogin(),
            SizedBox(height: 32.h),
            _buildDivider(),
            SizedBox(height: 24.h),
            _buildSocialLoginButtons(),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoSection() {
    return Center(
      child: CustomImageView(
        imagePath: ImageConstant.imgLogowj931,
        height: 47.h,
        width: 129.h,
      ),
    );
  }

  Widget _buildPhoneNumberInput() {
    return Obx(() => Container(
          height: 48.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF1B1C,
            border: Border.all(color: appTheme.colorFF478A),
            borderRadius: BorderRadius.circular(8.h),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorBlueGray400,
                height: 13.h,
                width: 17.h,
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
                style: TextStyleHelper.instance.body12BoldArial
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
                child: Row(
                  children: [
                    Text(
                      controller.registrationModel.value?.phoneNumber?.value ??
                          '1234567890',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                    Text(
                      '|',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => controller.onEditPhoneNumber(),
                child: CustomImageView(
                  imagePath: ImageConstant.img7,
                  height: 18.h,
                  width: 15.h,
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildPasswordInput() {
    return CustomTextField(
      hintText: 'Password',
      leadingIcon: ImageConstant.img1BlueGray400,
      trailingIcon: ImageConstant.img3,
      isPassword: true,
      controller: controller.passwordController,
      onTrailingIconTap: () => controller.togglePasswordVisibility(),
    );
  }

  Widget _buildReferralSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Enter Referral / Promo Code',
              style: TextStyleHelper.instance.body14MediumArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
            GestureDetector(
              onTap: () => controller.onExpandReferralSection(),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconBlueGray400,
                height: 20.h,
                width: 20.h,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Container(
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
                imagePath: ImageConstant.imgPromocode1,
                height: 24.h,
                width: 24.h,
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: TextFormField(
                  controller: controller.referralController,
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.whiteCustom),
                  decoration: InputDecoration(
                    hintText: 'Invitation code',
                    hintStyle: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.colorFF8089),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAgreementCheckboxes() {
    return Column(
      children: [
        Obx(() => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => controller.toggleUserAgreement(),
                  child: Container(
                    width: 16.h,
                    height: 16.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF2528,
                      border: Border.all(color: appTheme.colorFF4B55),
                      borderRadius: BorderRadius.circular(2.h),
                    ),
                    child: (controller.registrationModel.value
                                ?.isUserAgreementAccepted?.value ??
                            false)
                        ? Center(
                            child: CustomImageView(
                              imagePath: ImageConstant.imgVectorLightGreenA700,
                              height: 16.h,
                              width: 11.h,
                            ),
                          )
                        : null,
                  ),
                ),
                SizedBox(width: 12.h),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'l agree to the',
                          style: TextStyleHelper.instance.body14BoldArial
                              .copyWith(color: appTheme.colorFF8089),
                        ),
                        TextSpan(
                          text:
                              ' User Agreement & confirm l am at least 18 years old',
                          style: TextStyleHelper.instance.body14BoldArial
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        SizedBox(height: 16.h),
        Obx(() => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => controller.toggleMarketingAgreement(),
                  child: Container(
                    width: 16.h,
                    height: 16.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF2528,
                      border: Border.all(color: appTheme.colorFF4B55),
                      borderRadius: BorderRadius.circular(2.h),
                    ),
                    child: (controller.registrationModel.value
                                ?.isMarketingAgreementAccepted?.value ??
                            false)
                        ? Center(
                            child: CustomImageView(
                              imagePath: ImageConstant.imgVectorLightGreenA700,
                              height: 16.h,
                              width: 11.h,
                            ),
                          )
                        : null,
                  ),
                ),
                SizedBox(width: 12.h),
                Expanded(
                  child: Text(
                    'l agree to receive marketing promotions from Jbet88',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
              ],
            )),
      ],
    );
  }

  Widget _buildRegisterButton() {
    return Container(
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF363C41), Color(0xFF2B3035)],
        ),
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () => controller.onRegisterPressed(),
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.transparentCustom,
          shadowColor: appTheme.transparentCustom,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.h),
          ),
        ),
        child: Text(
          'Register',
          style: TextStyleHelper.instance.title16BoldArial
              .copyWith(color: appTheme.colorFF8089),
        ),
      ),
    );
  }

  Widget _buildForgotPasswordAndLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => controller.onForgotPasswordPressed(),
          child: Text(
            'Forgot password',
            style: TextStyleHelper.instance.body12BlackArial
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ),
        GestureDetector(
          onTap: () => controller.onLoginPressed(),
          child: Text(
            'Login',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFFC0C8),
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1.h,
            color: appTheme.colorFF4453,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Text(
            'OR',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.colorFFABB6),
          ),
        ),
        Expanded(
          child: Container(
            height: 1.h,
            color: appTheme.colorFF4453,
          ),
        ),
      ],
    );
  }

  Widget _buildSocialLoginButtons() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 42.h,
            decoration: BoxDecoration(
              color: appTheme.whiteCustom,
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: ElevatedButton(
              onPressed: () => controller.onGoogleLoginPressed(),
              style: ElevatedButton.styleFrom(
                backgroundColor: appTheme.whiteCustom,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.h),
                ),
                elevation: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 28.h,
                    height: 28.h,
                    decoration: BoxDecoration(
                      color: appTheme.whiteCustom,
                      borderRadius: BorderRadius.circular(14.h),
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGooglelogo98082,
                        height: 21.h,
                        width: 21.h,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.h),
                  Text(
                    'Google',
                    style: TextStyleHelper.instance.body12BoldArial
                        .copyWith(color: appTheme.blackCustom),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 16.h),
        Expanded(
          child: Container(
            height: 42.h,
            decoration: BoxDecoration(
              color: appTheme.whiteCustom,
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: ElevatedButton(
              onPressed: () => controller.onTelegramLoginPressed(),
              style: ElevatedButton.styleFrom(
                backgroundColor: appTheme.whiteCustom,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.h),
                ),
                elevation: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12024,
                    height: 28.h,
                    width: 28.h,
                  ),
                  SizedBox(width: 12.h),
                  Text(
                    'Telegram',
                    style: TextStyleHelper.instance.body12BoldArial
                        .copyWith(color: appTheme.blackCustom),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
