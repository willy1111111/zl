import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/daily_progress_item_model.dart';

class DailyProgressItemWidget extends StatelessWidget {
  final DailyProgressItemModel dailyProgress;

  const DailyProgressItemWidget({
    Key? key,
    required this.dailyProgress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 60.h,
                  height: 62.h,
                  decoration: BoxDecoration(
                    color: (dailyProgress.isCurrent?.value ?? false)
                        ? Color(0xFF009F41)
                        : (dailyProgress.isCompleted?.value ?? false)
                            ? Color(0xFF25282D)
                            : appTheme.colorFF1E20,
                    border: Border.all(
                      color: (dailyProgress.isCompleted?.value ?? false)
                          ? Color(0xFFFFC600)
                          : appTheme.colorFF292F,
                    ),
                    borderRadius: BorderRadius.circular(4.h),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dailyProgress.amount?.value ?? '',
                        style: TextStyleHelper.instance.body12Bold.copyWith(
                            color: (dailyProgress.isCurrent?.value ?? false)
                                ? appTheme.whiteCustom
                                : appTheme.colorFFC0C8),
                      ),
                      CustomImageView(
                        imagePath: dailyProgress.coinImage?.value ?? '',
                        height: (dailyProgress.isCurrent?.value ?? false)
                            ? 40.h
                            : 24.h,
                        width: (dailyProgress.isCurrent?.value ?? false)
                            ? 40.h
                            : 24.h,
                      ),
                    ],
                  ),
                ),
                if (dailyProgress.isCompleted?.value ?? false)
                  Positioned(
                    bottom: 4.h,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: CustomImageView(
                        imagePath: dailyProgress.checkImage?.value ?? '',
                        height: 29.h,
                        width: 21.h,
                      ),
                    ),
                  ),
                if (dailyProgress.isCurrent?.value ?? false)
                  Positioned(
                    top: -32.h,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                          color: appTheme.colorFF009F,
                          borderRadius: BorderRadius.circular(4.h),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.h, vertical: 4.h),
                        child: Text(
                          dailyProgress.bonusText?.value ?? '',
                          style: TextStyleHelper.instance.body12Bold
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                      ),
                    ),
                  ),
                if (dailyProgress.isCurrent?.value ?? false)
                  Positioned(
                    bottom: -8.h,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: CustomImageView(
                        imagePath: dailyProgress.arrowImage?.value ?? '',
                        height: 41.h,
                        width: 20.h,
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 4.h),
            Text(
              dailyProgress.day?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ));
  }
}
