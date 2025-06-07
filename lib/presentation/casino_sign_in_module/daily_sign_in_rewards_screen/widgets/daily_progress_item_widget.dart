import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/daily_progress_item_model.dart';

class DailyProgressItemWidget extends StatelessWidget {
  final DailyProgressItemModel dailyProgressItemModel;

  DailyProgressItemWidget({
    Key? key,
    required this.dailyProgressItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 60.h,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: (dailyProgressItemModel.isCurrentDay?.value ?? false)
                        ? Color(0xFF009F41)
                        : (dailyProgressItemModel.isCompleted?.value ?? false)
                            ? Color(0xFF25282D)
                            : appTheme.colorFF1E20,
                    border: Border.all(
                      color:
                          (dailyProgressItemModel.isCompleted?.value ?? false)
                              ? Color(0xFFFFC600)
                              : appTheme.colorFF292F,
                    ),
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dailyProgressItemModel.bonusAmount?.value ?? '',
                        style: TextStyleHelper.instance.body12Bold.copyWith(
                            color:
                                (dailyProgressItemModel.isCurrentDay?.value ??
                                        false)
                                    ? appTheme.whiteCustom
                                    : appTheme.colorFFC0C8),
                      ),
                      SizedBox(height: 4.h),
                      CustomImageView(
                        imagePath: dailyProgressItemModel.coinIcon?.value ?? '',
                        height: (dailyProgressItemModel.isCurrentDay?.value ??
                                false)
                            ? 40.h
                            : 24.h,
                        width: (dailyProgressItemModel.isCurrentDay?.value ??
                                false)
                            ? 40.h
                            : 24.h,
                      ),
                    ],
                  ),
                ),
                if (dailyProgressItemModel.checkIcon?.value.isNotEmpty == true)
                  Positioned.fill(
                    child: CustomImageView(
                      imagePath: dailyProgressItemModel.checkIcon?.value ?? '',
                      height: 28.h,
                      width: 20.h,
                    ),
                  ),
                if (dailyProgressItemModel.bonusIndicator?.value.isNotEmpty ==
                    true)
                  Positioned(
                    top: -8.h,
                    right: -8.h,
                    child: Stack(
                      children: [
                        CustomImageView(
                          imagePath:
                              dailyProgressItemModel.bonusIndicator?.value ??
                                  '',
                          height: 48.h,
                          width: 16.h,
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Text(
                            dailyProgressItemModel.extraBonus?.value ?? '',
                            style: TextStyleHelper.instance.body12Bold
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
              dailyProgressItemModel.dayLabel?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ));
  }
}
