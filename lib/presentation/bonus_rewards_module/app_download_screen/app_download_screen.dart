import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_styled_text.dart';
import './controller/app_download_controller.dart';
import './widgets/feature_card_widget.dart';

class AppDownloadScreen extends GetWidget<AppDownloadController> {
  const AppDownloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderText(),
            _buildAppPreviewSection(),
            _buildDownloadButtons(),
            _buildInformationSection(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: appTheme.colorFF1B1C,
      elevation: 2,
      shadowColor: appTheme.blackCustom,
      leading: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgStroke,
          height: 13.h,
          width: 7.h,
          onTap: () => Get.back(),
        ),
      ),
      title: Text(
        'Download APP',
        style: TextStyleHelper.instance.title16BoldArial,
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.h),
          child: CustomImageView(
            imagePath: ImageConstant.img1,
            height: 13.h,
            width: 356.h,
          ),
        ),
      ],
    );
  }

  Widget _buildHeaderText() {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.h, 12.h, 16.h, 0),
      child: CustomStyledText(
        textSpans: [
          CustomTextSpan(
            text: 'Install the ',
            color: appTheme.whiteCustom,
          ),
          CustomTextSpan(
            text: 'jbet88 app now!',
            color: appTheme.colorFFF6D1,
            fontWeight: FontWeight.bold,
          ),
        ],
        fontSize: 22.fSize,
        fontWeight: FontWeight.bold,
        lineHeight: 1.18,
      ),
    );
  }

  Widget _buildAppPreviewSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(16.h, 32.h, 16.h, 0),
      height: 380.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse180,
            height: 380.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 32.h,
            left: 32.h,
            child: Container(
              height: 316.h,
              width: 316.h,
              decoration: BoxDecoration(
                border: Border.all(color: appTheme.colorFF2729),
                borderRadius: BorderRadius.circular(158.h),
              ),
            ),
          ),
          Positioned(
            top: 7.h,
            left: 64.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup12109,
              height: 307.h,
              width: 248.h,
            ),
          ),
          Positioned(
            top: 40.h,
            left: 20.h,
            child: FeatureCardWidget(
              backgroundImagePath: ImageConstant.imgRectangle630,
              iconPath: ImageConstant.imgGroup12010,
              text: 'Fast deposit and withdrawa',
              cardWidth: 158.h,
              cardHeight: 47.h,
              iconWidth: 28.h,
              iconHeight: 26.h,
            ),
          ),
          Positioned(
            top: -12.h,
            right: 20.h,
            child: FeatureCardWidget(
              backgroundImagePath: ImageConstant.imgRectangle629,
              iconPath: ImageConstant
                  .imgF5124981615ba922af46f555db3ffbbb7d329f083967bosuwg11,
              text: 'Make your account and funds more secure',
              cardWidth: 164.h,
              cardHeight: 57.h,
              iconWidth: 23.h,
              iconHeight: 26.h,
            ),
          ),
          Positioned(
            bottom: 64.h,
            right: 20.h,
            child: FeatureCardWidget(
              backgroundImagePath: ImageConstant.imgRectangle631,
              iconPath: ImageConstant.imgGroup12100,
              text: 'Receive the latest promotional information',
              cardWidth: 158.h,
              cardHeight: 63.h,
              iconWidth: 20.h,
              iconHeight: 22.h,
            ),
          ),
          Positioned(
            bottom: 0.h,
            left: 8.h,
            child: FeatureCardWidget(
              backgroundImagePath: ImageConstant.imgRectangle630,
              iconPath: ImageConstant.imgGroup12101,
              text:
                  'Open PG, JILI and other games with one click for a better gaming experience',
              cardWidth: 171.h,
              cardHeight: 76.h,
              iconWidth: 35.h,
              iconHeight: 35.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDownloadButtons() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.h, 32.h, 20.h, 0),
      child: Column(
        children: [
          CustomButton(
            text: 'Android',
            secondaryText: 'Download APK',
            iconPath: ImageConstant.imgFrameWhiteA700,
            sizeText: '(4.9MB)',
            variant: CustomButtonVariant.solid,
            isFullWidth: true,
            onPressed: () => controller.downloadAndroid(),
          ),
          SizedBox(height: 16.h),
          Container(
            width: double.infinity,
            height: 44.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF0071,
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 73.h,
                  top: 10.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrameWhiteA70024x24,
                    height: 24.h,
                    width: 24.h,
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Download on the',
                        style: TextStyleHelper.instance.body12Arial
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                      Text(
                        'App Store',
                        style: TextStyleHelper.instance.title18BoldArial,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 24.h,
                  top: 13.h,
                  child: Text(
                    '(0.74MB)',
                    style: TextStyleHelper.instance.body14Arial,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInformationSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(16.h, 32.h, 16.h, 32.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInformationItem(
            number: '1.',
            text:
                'Make your account and funds more secure: jbet88 official website the world\'s advanced security technology ensures that your account and funds are fully protected protection, we are committed to providing a safe environment for use.',
          ),
          SizedBox(height: 16.h),
          _buildInformationItem(
            number: '2.',
            text:
                'Fast deposit and withdrawal: The fast and convenient deposit and withdrawal function makes your gaming experience smoother. Whether depositing or withdrawing money, just follow a few simple steps in the app and save time.',
          ),
          SizedBox(height: 16.h),
          _buildInformationItem(
            number: '3.',
            text:
                'Receive the latest promotional information: Through the jbet88 official APP, you can get the latest promotional information anytime and anywhere, no longer miss any offers or activities, and understand the latest developments in the gaming world in real time.',
          ),
          SizedBox(height: 16.h),
          _buildInformationItem(
            number: '4.',
            text:
                'Open PG, JILI and other games with one click for a better gaming experience: jbet88 official APP provides a more convenient usage experience. You can play your favorite games anytime, anywhere and enjoy a smoother and higher-quality gaming experience.',
          ),
          SizedBox(height: 24.h),
          Text(
            'We sincerely invite you to download the jbet88 official application immediately and start a new gaming journey.\nThank you for your support of jbet88. We are committed to continuously improving our services and bringing you more surprises and conveniences.\n\nThank you for your trust and support!',
            style: TextStyleHelper.instance.body12Arial.copyWith(height: 1.17),
          ),
          SizedBox(height: 16.h),
          Text(
            'jbet88 team greetings',
            style: TextStyleHelper.instance.body14BoldArial,
          ),
        ],
      ),
    );
  }

  Widget _buildInformationItem({
    required String number,
    required String text,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: TextStyleHelper.instance.body12Arial,
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: Text(
            text,
            style: TextStyleHelper.instance.body12Arial.copyWith(height: 1.17),
          ),
        ),
      ],
    );
  }
}
