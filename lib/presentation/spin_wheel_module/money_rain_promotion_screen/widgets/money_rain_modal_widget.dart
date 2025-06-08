import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/money_rain_promotion_controller.dart';

class MoneyRainModalWidget extends StatelessWidget {
  const MoneyRainModalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<MoneyRainPromotionController>();

    return Positioned(
      top: 152.h,
      left: 28.h,
      right: 28.h,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFA6900), Color(0xFFBF1E1E)],
          ),
          borderRadius: BorderRadius.circular(12.h),
        ),
        padding: EdgeInsets.all(12.h),
        child: Column(
          children: [
            // Close Button
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () => controller.closeMoneyRainModal(),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup848,
                  height: 28.h,
                  width: 28.h,
                ),
              ),
            ),

            // Money Rain Header
            Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img2858,
                  height: 48.h,
                  width: 180.h,
                ),
                SizedBox(height: 9.h),
                Text(
                  'Money Rain',
                  style: TextStyleHelper.instance.title22BoldArial,
                ),
              ],
            ),

            SizedBox(height: 20.h),

            // Prize Display
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGh11,
                  height: 53.h,
                  width: 128.h,
                ),
                SizedBox(width: 17.h),
                Column(
                  children: [
                    Text(
                      'Max Drop',
                      style: TextStyleHelper.instance.body12BoldArial
                          .copyWith(color: appTheme.colorFFFFF4, height: 0.8),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      '₱7,777',
                      style: TextStyleHelper.instance.title20BoldArial
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      '₱200,000',
                      style: TextStyleHelper.instance.display40BoldArial
                          .copyWith(height: 1.15),
                    ),
                    Text(
                      'At a time',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ],
                ),
                SizedBox(width: 17.h),
                CustomImageView(
                  imagePath: ImageConstant.img71,
                  height: 65.h,
                  width: 80.h,
                ),
              ],
            ),

            SizedBox(height: 20.h),

            // Schedule Calendar
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFFF0D6), Color(0xFFFFC48B)],
                ),
                borderRadius: BorderRadius.circular(8.h),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Calendar Header
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFFF3366), Color(0xFFFF6E30)],
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.h),
                        topRight: Radius.circular(8.h),
                      ),
                    ),
                    padding: EdgeInsets.all(9.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildDayHeader('Mon.', false),
                        _buildDayHeader('Tues.', false),
                        _buildDayHeader('Wed.', true),
                        _buildDayHeader('Thu.', false),
                        _buildDayHeader('Fri.', false),
                        _buildDayHeader('Sat.', false),
                        _buildDayHeader('Sun.', false),
                      ],
                    ),
                  ),

                  // Time Slots
                  Padding(
                    padding: EdgeInsets.all(9.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            _buildTimeSlot('01:00-02:59'),
                            SizedBox(width: 1.h),
                            _buildTimeSlot('02:00-02:59'),
                            SizedBox(width: 1.h),
                            _buildTimeSlot('03:00-03:59'),
                            SizedBox(width: 1.h),
                            Expanded(child: _buildEmptySlot()),
                            SizedBox(width: 1.h),
                            Expanded(child: _buildEmptySlot()),
                            SizedBox(width: 1.h),
                            Expanded(child: _buildEmptySlot()),
                            SizedBox(width: 1.h),
                            Expanded(child: _buildEmptySlot()),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.h),

            // Rules Text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '• Each money rain gives out 200,000 for free',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.whiteCustom, height: 1.33),
                ),
                Text(
                  '• Recharge Teamss can get it for free',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.whiteCustom, height: 1.33),
                ),
                Text(
                  '• The money received can be used for betting or withdrawndirectly',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.whiteCustom, height: 1.33),
                ),
                Text(
                  '• The higher the VlP level, the greater the value you get',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.whiteCustom, height: 1.33),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            // Next Round Button
            Container(
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                borderRadius: BorderRadius.circular(12.h),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorGray90002,
                    height: 14.h,
                    width: 13.h,
                  ),
                  SizedBox(width: 10.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'next Round ',
                          style: TextStyleHelper.instance.title16MediumArial,
                        ),
                        TextSpan(
                          text: '10:08:01',
                          style: TextStyleHelper.instance.title16MediumArial
                              .copyWith(color: appTheme.colorFFFF00),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDayHeader(String day, bool isSelected) {
    return Container(
      decoration: isSelected
          ? BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFF3366), Color(0xFFFF6E30)],
              ),
              borderRadius: BorderRadius.circular(4.h),
            )
          : null,
      padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 4.h),
      child: Stack(
        children: [
          Text(
            day,
            style: TextStyleHelper.instance.body14BoldArial.copyWith(
                color:
                    isSelected ? appTheme.whiteCustom : appTheme.colorFF2528),
          ),
          if (isSelected)
            Positioned(
              right: 5.h,
              top: 11.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgPolygon11,
                height: 10.h,
                width: 6.h,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTimeSlot(String time) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [Color(0xFFFF3366), Color(0xFFFF6E30)],
          ),
          borderRadius: BorderRadius.circular(4.h),
        ),
        padding: EdgeInsets.all(8.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVectorGray40001,
              height: 12.h,
              width: 11.h,
            ),
            SizedBox(width: 15.h),
            Text(
              time,
              style: TextStyleHelper.instance.title16BoldArial
                  .copyWith(color: appTheme.colorFFC9A4),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptySlot() {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [Color(0xFFFF3366), Color(0xFFFF6E30)],
        ),
        borderRadius: BorderRadius.circular(4.h),
      ),
    );
  }
}
