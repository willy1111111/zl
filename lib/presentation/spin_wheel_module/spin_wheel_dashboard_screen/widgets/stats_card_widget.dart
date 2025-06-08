import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class StatsCardWidget extends StatelessWidget {
  final String? title;
  final String? amount;
  final String? avatarPath;
  final String? userName;
  final String? winAmount;
  final bool isTotal;

  StatsCardWidget({
    Key? key,
    this.title,
    this.amount,
    this.avatarPath,
    this.userName,
    this.winAmount,
    required this.isTotal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF3236,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: isTotal ? _buildTotalCard() : _buildUserCard(),
    );
  }

  Widget _buildTotalCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          style: TextStyleHelper.instance.body12,
        ),
        SizedBox(height: 8.h),
        Text(
          amount ?? '',
          style: TextStyleHelper.instance.body14Black
              .copyWith(color: appTheme.colorFFFFA6),
        ),
      ],
    );
  }

  Widget _buildUserCard() {
    return Row(
      children: [
        CustomImageView(
          imagePath: avatarPath ?? '',
          height: 30.h,
          width: 30.h,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Text(
                    'Win:',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                  SizedBox(width: 4.h),
                  Text(
                    winAmount ?? '',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF85D4),
                  ),
                ],
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.img52,
          height: 12.h,
          width: 12.h,
        ),
      ],
    );
  }
}
