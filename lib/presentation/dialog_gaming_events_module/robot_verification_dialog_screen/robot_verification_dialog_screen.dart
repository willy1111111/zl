import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/robot_verification_dialog_controller.dart';

class RobotVerificationDialogScreen extends StatelessWidget {
  RobotVerificationDialogScreen({Key? key}) : super(key: key);

  final RobotVerificationDialogController controller =
      Get.put(RobotVerificationDialogController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.h),
          padding: EdgeInsets.all(20.h),
          decoration: BoxDecoration(
            color: appTheme.colorFF1E20,
            borderRadius: BorderRadius.circular(12.h),
            border: Border.all(color: appTheme.colorFF2C35),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildHeader(),
              SizedBox(height: 20.h),
              _buildCaptchaSection(),
              SizedBox(height: 20.h),
              _buildActionButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '机器人验证',
          style: TextStyleHelper.instance.body16Bold.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
        GestureDetector(
          onTap: () => controller.onCloseDialog(),
          child: Icon(
            Icons.close,
            color: appTheme.whiteA700,
            size: 24.h,
          ),
        ),
      ],
    );
  }

  Widget _buildCaptchaSection() {
    return Obx(() => Column(
      children: [
        Text(
          '请完成以下验证以确认您不是机器人',
          style: TextStyleHelper.instance.body14Regular.copyWith(
            color: appTheme.gray400,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16.h),
        Container(
          height: 120.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: appTheme.gray900,
            borderRadius: BorderRadius.circular(8.h),
            border: Border.all(color: appTheme.colorFF2C35),
          ),
          child: controller.isLoading.value
              ? Center(
                  child: CircularProgressIndicator(
                    color: appTheme.primaryColor,
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: controller.captchaImagePath.value,
                      height: 60.h,
                      width: 150.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 8.h),
                    GestureDetector(
                      onTap: () => controller.refreshCaptcha(),
                      child: Text(
                        '看不清？点击刷新',
                        style: TextStyleHelper.instance.body12Regular.copyWith(
                          color: appTheme.primaryColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
        ),
        SizedBox(height: 16.h),
        TextField(
          controller: controller.captchaController,
          style: TextStyleHelper.instance.body14Regular.copyWith(
            color: appTheme.whiteA700,
          ),
          decoration: InputDecoration(
            hintText: '请输入验证码',
            hintStyle: TextStyleHelper.instance.body14Regular.copyWith(
              color: appTheme.gray400,
            ),
            filled: true,
            fillColor: appTheme.gray900,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.h),
              borderSide: BorderSide(color: appTheme.colorFF2C35),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.h),
              borderSide: BorderSide(color: appTheme.colorFF2C35),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.h),
              borderSide: BorderSide(color: appTheme.primaryColor),
            ),
          ),
        ),
      ],
    ));
  }

  Widget _buildActionButtons() {
    return Obx(() => Row(
      children: [
        Expanded(
          child: CustomButton(
            text: '取消',
            buttonStyle: CustomButtonStyles.fillGray,
            onPressed: () => controller.onCloseDialog(),
          ),
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: CustomButton(
            text: controller.isVerifying.value ? '验证中...' : '确认',
            buttonStyle: CustomButtonStyles.fillPrimary,
            onPressed: controller.isVerifying.value
                ? null
                : () => controller.onVerifyCaptcha(),
          ),
        ),
      ],
    ));
  }
}