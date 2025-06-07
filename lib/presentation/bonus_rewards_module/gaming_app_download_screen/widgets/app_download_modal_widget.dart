import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../controller/gaming_app_download_controller.dart';

class AppDownloadModalWidget extends StatelessWidget {
  const AppDownloadModalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<GamingAppDownloadController>();

    return Container(
      color: appTheme.blackCustom.withAlpha(204),
      child: Center(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(16.h),
          decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.h),
              topRight: Radius.circular(8.h),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildModalHeader(controller),
              _buildModalContent(controller),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModalHeader(GamingAppDownloadController controller) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.h),
          topRight: Radius.circular(8.h),
        ),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant
                .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
            width: double.infinity,
            height: 80.h,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img112,
                height: 50.h,
                width: 50.h,
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MANY BENEFITS FOR NEWCOMERS',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: List.generate(5, (index) => _buildStar()),
                    ),
                  ],
                ),
              ),
              CustomButton(
                text: 'Download',
                variant: CustomButtonVariant.solid,
                height: 32.h,
                width: 80.h,
                onPressed: () => controller.downloadApp(),
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onTap: () => controller.closeModal(),
              child: Container(
                height: 14.h,
                width: 14.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF478A,
                  shape: BoxShape.circle,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVectorLightGreen400,
                  height: 26.h,
                  width: 26.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildModalContent(GamingAppDownloadController controller) {
    return Padding(
      padding: EdgeInsets.all(20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgApp1,
            width: double.infinity,
            height: 126.h,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 24.h),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xFFFFEF4E), Color(0xFFC58D42)],
                  ),
                  borderRadius: BorderRadius.circular(4.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.blackCustom,
                      offset: Offset(0, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Text(
                  'V2.0',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF1E20),
                ),
              ),
              SizedBox(width: 12.h),
              Text(
                'Discover a new version',
                style: TextStyleHelper.instance.title16Bold,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Your account ',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFFC0C8),
                ),
                TextSpan(
                  text:
                      '9895546461 has been successfully promoted to VIP Teams.',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF0071),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Update the app and enjoy smoother gameplay and richer benefits.',
            style: TextStyleHelper.instance.body14
                .copyWith(color: appTheme.colorFFC0C8, height: 1.3),
          ),
          SizedBox(height: 24.h),
          CustomButton(
            text: 'Update now',
            secondaryText: '(4.9MB)',
            iconPath: ImageConstant.imgFrame1WhiteA700,
            variant: CustomButtonVariant.solid,
            height: 44.h,
            isFullWidth: true,
            onPressed: () => controller.downloadApp(),
          ),
          SizedBox(height: 24.h),
          Text(
            'Installing an application',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFFC0C8),
          ),
          SizedBox(height: 8.h),
          _buildInstallationSteps(),
          SizedBox(height: 24.h),
          _buildSecurityNotice(),
        ],
      ),
    );
  }

  Widget _buildStar() {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      child: ClipPath(
        clipper: StarClipper(),
        child: Container(
          height: 15.h,
          width: 15.h,
          color: appTheme.colorFFFFF4,
        ),
      ),
    );
  }

  Widget _buildInstallationSteps() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildStep(
            '1. Click the button above to download the installation file'),
        _buildStep(
            '2. Allow installation of apps from unknown source in your device settings'),
        _buildStep('3. Complete the installation'),
      ],
    );
  }

  Widget _buildStep(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h),
      child: Text(
        text,
        style: TextStyleHelper.instance.body12
            .copyWith(color: appTheme.colorFF8089, height: 1.5),
      ),
    );
  }

  Widget _buildSecurityNotice() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        borderRadius: BorderRadius.circular(4.h),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorGreen500,
            height: 16.h,
            width: 16.h,
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Friendly notice',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFFC0C8),
                ),
                SizedBox(height: 4.h),
                Text(
                  'This app has passed Google Play security certification, so feel free to install it.',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.colorFF8089, height: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final w = size.width;
    final h = size.height;

    path.moveTo(w * 0.5, 0);
    path.lineTo(w * 0.61, h * 0.35);
    path.lineTo(w * 0.98, h * 0.35);
    path.lineTo(w * 0.68, h * 0.57);
    path.lineTo(w * 0.79, h * 0.91);
    path.lineTo(w * 0.5, h * 0.7);
    path.lineTo(w * 0.21, h * 0.91);
    path.lineTo(w * 0.32, h * 0.57);
    path.lineTo(w * 0.02, h * 0.35);
    path.lineTo(w * 0.39, h * 0.35);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
