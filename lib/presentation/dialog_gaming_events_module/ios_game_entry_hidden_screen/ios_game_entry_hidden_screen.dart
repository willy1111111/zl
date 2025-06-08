import 'controller/ios_game_entry_hidden_controller.dart';
import '../../../core/app_export.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class IosGameEntryHiddenScreen extends GetWidget<IosGameEntryHiddenController> {
  const IosGameEntryHiddenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              _buildHeader(),
              SizedBox(height: 32.v),
              Expanded(
                child: _buildMainContent(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget - Header
  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAppleLogo,
            height: 48.adaptSize,
            width: 48.adaptSize,
          ),
          SizedBox(height: 16.v),
          Text(
            "iOS 游戏入口",
            style: theme.textTheme.headlineSmall?.copyWith(
              color: appTheme.gray900,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            "为了符合 App Store 审核要求，请通过特殊方式进入游戏",
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget - Main Content
  Widget _buildMainContent() {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        children: [
          _buildSecretCodeSection(),
          SizedBox(height: 32.v),
          _buildGestureSection(),
          SizedBox(height: 32.v),
          _buildActionButtons(),
        ],
      ),
    );
  }

  /// Section Widget - Secret Code
  Widget _buildSecretCodeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "方式一：输入特殊代码",
          style: theme.textTheme.titleMedium?.copyWith(
            color: appTheme.gray900,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          "请输入管理员提供的特殊代码",
          style: theme.textTheme.bodySmall?.copyWith(
            color: appTheme.gray600,
          ),
        ),
        SizedBox(height: 16.v),
        Obx(
          () => CustomTextFormField(
            controller: controller.secretCodeController,
            hintText: "请输入特殊代码",
            textInputType: TextInputType.text,
            obscureText: true,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
              child: Obx(
                () => CustomImageView(
                  imagePath: controller.isSecretCodeVisible.value
                      ? ImageConstant.imgEyeOpen
                      : ImageConstant.imgEyeClosed,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            onTap: () => controller.toggleSecretCodeVisibility(),
          ),
        ),
        SizedBox(height: 12.v),
        CustomElevatedButton(
          text: "验证代码",
          onPressed: () => controller.onVerifySecretCode(),
          buttonStyle: CustomButtonStyles.fillPrimary,
        ),
      ],
    );
  }

  /// Section Widget - Gesture
  Widget _buildGestureSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "方式二：特殊手势",
          style: theme.textTheme.titleMedium?.copyWith(
            color: appTheme.gray900,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          "在下方区域按照指定顺序点击",
          style: theme.textTheme.bodySmall?.copyWith(
            color: appTheme.gray600,
          ),
        ),
        SizedBox(height: 16.v),
        Obx(
          () => Container(
            height: 120.v,
            width: double.maxFinite,
            decoration: AppDecoration.outlineGray300.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
              color: controller.gestureProgress.value > 0
                  ? appTheme.lightBlue50
                  : appTheme.gray50,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                  onTapDown: (details) => controller.onGestureTap(details),
                  child: Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    color: Colors.transparent,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.touch_app,
                      size: 32.adaptSize,
                      color: appTheme.gray400,
                    ),
                    SizedBox(height: 8.v),
                    Obx(
                      () => Text(
                        "进度: ${controller.gestureProgress.value}/5",
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: appTheme.gray600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget - Action Buttons
  Widget _buildActionButtons() {
    return Column(
      children: [
        Obx(
          () => CustomElevatedButton(
            text: controller.isGameUnlocked.value ? "进入游戏" : "游戏未解锁",
            onPressed: controller.isGameUnlocked.value
                ? () => controller.onEnterGame()
                : null,
            buttonStyle: controller.isGameUnlocked.value
                ? CustomButtonStyles.fillSuccess
                : CustomButtonStyles.fillGray,
          ),
        ),
        SizedBox(height: 12.v),
        CustomElevatedButton(
          text: "返回首页",
          onPressed: () => controller.onBackToHome(),
          buttonStyle: CustomButtonStyles.outlineGray,
        ),
        SizedBox(height: 24.v),
        Text(
          "如需帮助，请联系客服",
          style: theme.textTheme.bodySmall?.copyWith(
            color: appTheme.gray500,
          ),
        ),
      ],
    );
  }
}