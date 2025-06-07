import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../controller/vip_daily_salary_dashboard_controller.dart';

class VipLevelCardWidget extends StatelessWidget {
  VipLevelCardWidget({Key? key}) : super(key: key);

  var controller = Get.find<VipDailySalaryDashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, -1.0),
          end: Alignment(0.0, 1.0),
          colors: [Color(0xFF2A5200), Color(0xFF336300)],
        ),
        borderRadius: BorderRadius.circular(12.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Stack(
        children: [
          _buildBackgroundElements(),
          _buildVipIcon(),
          _buildCardContent(),
        ],
      ),
    );
  }

  Widget _buildBackgroundElements() {
    return Positioned.fill(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 108.h,
              decoration: BoxDecoration(
                border: Border.all(color: appTheme.color2675CC),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.h),
                  bottomLeft: Radius.circular(12.h),
                  bottomRight: Radius.circular(12.h),
                  topRight: Radius.circular(12.h),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 6.h,
            left: 0,
            right: 0,
            child: Container(
              height: 114.h,
              decoration: BoxDecoration(
                border: Border.all(color: appTheme.color2675CC),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.h),
                  bottomLeft: Radius.circular(12.h),
                  bottomRight: Radius.circular(12.h),
                  topRight: Radius.circular(12.h),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 57.h,
              decoration: BoxDecoration(
                border: Border.all(color: appTheme.color2675CC),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.h),
                  topRight: Radius.circular(12.h),
                  bottomLeft: Radius.circular(28.h),
                  bottomRight: Radius.circular(12.h),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 65.h,
              decoration: BoxDecoration(
                border: Border.all(color: appTheme.color2675CC),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.h),
                  topRight: Radius.circular(12.h),
                  bottomLeft: Radius.circular(30.h),
                  bottomRight: Radius.circular(12.h),
                ),
              ),
              child: Container(
                height: 48.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF85D4,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.h),
                    topRight: Radius.circular(12.h),
                    bottomLeft: Radius.circular(24.h),
                    bottomRight: Radius.circular(12.h),
                  ),
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle416,
                  height: 48.h,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVipIcon() {
    return Positioned(
      top: 0,
      right: 16.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgIconvip0,
        height: 125.h,
        width: 125.h,
      ),
    );
  }

  Widget _buildCardContent() {
    return Positioned(
      left: 16.h,
      top: 16.h,
      right: 16.h,
      bottom: 16.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 20.h,
                width: 20.h,
              ),
              SizedBox(width: 8.h),
              Text(
                '10',
                style: TextStyleHelper.instance.headline28Black
                    .copyWith(height: 1.4),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          SizedBox(
            width: 211.h,
            child: Text(
              'Complete the following requirements to upgrade',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF203F),
            ),
          ),
          SizedBox(height: 16.h),
          _buildProgressSection(),
        ],
      ),
    );
  }

  Widget _buildProgressSection() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.8, -0.6),
          end: Alignment(0.8, 0.6),
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
        borderRadius: BorderRadius.circular(30.h),
        border: Border.all(color: appTheme.colorFF85D4),
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3263,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.h),
                        bottomLeft: Radius.circular(10.h),
                        topRight: Radius.circular(2.h),
                        bottomRight: Radius.circular(2.h),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.blackCustom,
                          offset: Offset(0, 2.h),
                          blurRadius: 4.h,
                        ),
                      ],
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                    child: Text(
                      'Deposit amount',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '46',
                              style: TextStyleHelper.instance.body14Black
                                  .copyWith(color: appTheme.colorFFFFC6),
                            ),
                            TextSpan(
                              text: '/',
                              style: TextStyleHelper.instance.body14Black,
                            ),
                            TextSpan(
                              text: '100',
                              style: TextStyleHelper.instance.body14Black,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup934LightGreen90001,
                        height: 4.h,
                        width: 123.h,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3263,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.h),
                        bottomLeft: Radius.circular(10.h),
                        topRight: Radius.circular(2.h),
                        bottomRight: Radius.circular(2.h),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.blackCustom,
                          offset: Offset(0, 2.h),
                          blurRadius: 4.h,
                        ),
                      ],
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                    child: Text(
                      'Bet amount',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '100/100',
                        style: TextStyleHelper.instance.body14Black,
                      ),
                      SizedBox(width: 8.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup934LightGreen90001,
                        height: 4.h,
                        width: 126.h,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 16.h,
            right: 16.h,
            child: _buildVipBadge(),
          ),
        ],
      ),
    );
  }

  Widget _buildVipBadge() {
    return Container(
      height: 64.h,
      width: 64.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.8),
          end: Alignment(-0.5, 0.8),
          colors: [Color(0xFF496451), appTheme.colorFF2136, Color(0xFF0C150E)],
        ),
        shape: BoxShape.circle,
        border: Border.all(color: appTheme.colorFFCAFF),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom,
            offset: Offset(0, 2.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.6, -0.8),
            end: Alignment(-0.6, 0.8),
            colors: [Color(0xBC49C647), Color(0x00105327)],
          ),
          shape: BoxShape.circle,
          border: Border.all(color: appTheme.colorFFCAFF),
        ),
        child: Container(
          margin: EdgeInsets.all(4.h),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: appTheme.colorFFCAFF),
            boxShadow: [
              BoxShadow(
                color: appTheme.colorFF8888,
                offset: Offset(0, 4.h),
                blurRadius: 1.h,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'V10',
                style: TextStyleHelper.instance.title20Black,
              ),
              Text(
                '73%',
                style: TextStyleHelper.instance.body12Black
                    .copyWith(color: appTheme.colorFF85D4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
