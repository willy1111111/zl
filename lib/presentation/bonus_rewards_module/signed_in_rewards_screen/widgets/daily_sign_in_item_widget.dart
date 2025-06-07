import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/daily_sign_in_item_model.dart';

class DailySignInItemWidget extends StatelessWidget {
  final DailySignInItemModel dailySignInItemModel;

  DailySignInItemWidget({
    Key? key,
    required this.dailySignInItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.h,
      height: 62.h,
      decoration: BoxDecoration(
        color: dailySignInItemModel.backgroundColor?.value ?? Color(0xFF25282D),
        border: Border.all(
          color: dailySignInItemModel.borderColor?.value ?? Color(0xFF292F36),
        ),
        borderRadius: BorderRadius.circular(4.h),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8.h,
            left: 0,
            right: 0,
            child: Text(
              dailySignInItemModel.amount?.value ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold.copyWith(
                  color: dailySignInItemModel.isCurrent?.value ?? false
                      ? appTheme.whiteCustom
                      : appTheme.colorFFC0C8),
            ),
          ),
          if (dailySignInItemModel.coinImagePath?.value.isNotEmpty ?? false)
            Positioned(
              top: dailySignInItemModel.isCurrent?.value ?? false ? 20.h : 27.h,
              left: 0,
              right: 0,
              child: Center(
                child: CustomImageView(
                  imagePath: dailySignInItemModel.coinImagePath?.value ?? '',
                  height: dailySignInItemModel.isCurrent?.value ?? false
                      ? 40.h
                      : 24.h,
                  width: dailySignInItemModel.isCurrent?.value ?? false
                      ? 40.h
                      : 24.h,
                ),
              ),
            ),
          if (dailySignInItemModel.isCompleted?.value ?? false)
            Positioned(
              top: 30.h,
              left: 0,
              right: 0,
              child: Center(
                child: CustomImageView(
                  imagePath: dailySignInItemModel.checkImagePath?.value ?? '',
                  height: 29.h,
                  width: 21.h,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
