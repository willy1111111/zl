import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/daily_progress_item_model.dart';

class DailyProgressItemWidget extends StatelessWidget {
  final DailyProgressItemModel dailyProgressItemModel;
  final int index;

  const DailyProgressItemWidget({
    Key? key,
    required this.dailyProgressItemModel,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 60.h,
              height: 62.h,
              decoration: BoxDecoration(
                color: (dailyProgressItemModel.isCurrent?.value ?? false)
                    ? Color(0xFF009F41)
                    : appTheme.colorFF2528,
                border: Border.all(
                  color: (dailyProgressItemModel.isCurrent?.value ?? false)
                      ? appTheme.transparentCustom
                      : appTheme.colorFFFFC6,
                ),
                borderRadius: BorderRadius.circular(4.h),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dailyProgressItemModel.amount?.value ?? '',
                    style: TextStyleHelper.instance.body12BoldArial.copyWith(
                        color:
                            (dailyProgressItemModel.isCurrent?.value ?? false)
                                ? appTheme.whiteCustom
                                : appTheme.colorFFC0C8),
                  ),
                  SizedBox(height: 4.h),
                  CustomImageView(
                    imagePath: dailyProgressItemModel.coinImage?.value ?? '',
                    height: 24.h,
                    width: 24.h,
                  ),
                ],
              ),
            ),
            if (dailyProgressItemModel.vectorImage?.value.isNotEmpty == true &&
                !(dailyProgressItemModel.isCurrent?.value ?? false))
              Positioned.fill(
                child: CustomImageView(
                  imagePath: dailyProgressItemModel.vectorImage?.value ?? '',
                  height: 29.h,
                  width: 21.h,
                ),
              ),
            if (dailyProgressItemModel.hasBonus?.value ?? false)
              Positioned(
                top: -8.h,
                right: -8.h,
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: dailyProgressItemModel.bonusImage?.value ?? '',
                      height: 47.h,
                      width: 16.h,
                    ),
                    Positioned(
                      top: 0,
                      left: 4.h,
                      child: Text(
                        dailyProgressItemModel.bonusAmount?.value ?? '',
                        style: TextStyleHelper.instance.body12BoldArial
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
        SizedBox(height: 8.h),
        Text(
          dailyProgressItemModel.day?.value ?? '',
          style: TextStyleHelper.instance.body12BoldArial
              .copyWith(color: appTheme.whiteCustom),
        ),
        if (dailyProgressItemModel.currentIndicator?.value.isNotEmpty == true)
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: CustomImageView(
              imagePath: dailyProgressItemModel.currentIndicator?.value ?? '',
              height: 41.h,
              width: 20.h,
            ),
          ),
      ],
    );
  }
}
