import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/daily_progress_item_model.dart';

class DailyProgressItemWidget extends StatelessWidget {
  final DailyProgressItemModel dailyProgressItemModel;

  const DailyProgressItemWidget({
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
                  height: 62.h,
                  decoration: BoxDecoration(
                    color: Color(
                        dailyProgressItemModel.backgroundColor?.value ??
                            0xFF25282D),
                    border: dailyProgressItemModel.borderColor?.value != null
                        ? Border.all(
                            color: Color(
                                dailyProgressItemModel.borderColor!.value))
                        : null,
                    borderRadius: BorderRadius.circular(4.h),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dailyProgressItemModel.amount?.value ?? '',
                        style: TextStyleHelper.instance.body12BoldArial
                            .copyWith(
                                color: dailyProgressItemModel.isActive?.value ??
                                        false
                                    ? appTheme.whiteCustom
                                    : appTheme.colorFFC0C8),
                      ),
                      SizedBox(height: 4.h),
                      CustomImageView(
                        imagePath:
                            dailyProgressItemModel.coinImage?.value ?? '',
                        height: dailyProgressItemModel.isActive?.value ?? false
                            ? 40.h
                            : 24.h,
                        width: dailyProgressItemModel.isActive?.value ?? false
                            ? 40.h
                            : 24.h,
                      ),
                    ],
                  ),
                ),
                if (dailyProgressItemModel.isCompleted?.value ?? false)
                  Positioned.fill(
                    child: CustomImageView(
                      imagePath: dailyProgressItemModel.checkIcon?.value ?? '',
                      height: 29.h,
                      width: 21.h,
                    ),
                  ),
                if (dailyProgressItemModel.isActive?.value ?? false)
                  Positioned(
                    top: -8.h,
                    right: -8.h,
                    child: Container(
                      decoration: BoxDecoration(
                        color: appTheme.colorFF009F,
                        borderRadius: BorderRadius.circular(4.h),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.h),
                      child: Text(
                        dailyProgressItemModel.bonusAmount?.value ?? '',
                        style: TextStyleHelper.instance.body12BoldArial
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              dailyProgressItemModel.dayNumber?.value ?? '',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ));
  }
}
