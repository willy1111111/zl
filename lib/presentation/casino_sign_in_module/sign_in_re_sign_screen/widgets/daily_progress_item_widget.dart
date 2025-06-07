import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/daily_progress_item_model.dart';

class DailyProgressItemWidget extends StatelessWidget {
  final DailyProgressItemModel dailyProgressModel;

  const DailyProgressItemWidget({
    Key? key,
    required this.dailyProgressModel,
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
                color: _getBackgroundColor(),
                borderRadius: BorderRadius.circular(4.h),
                border: _getBorder(),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() => Text(
                        dailyProgressModel.amount?.value ?? '',
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: _getTextColor()),
                      )),
                  SizedBox(height: 4.h),
                  Obx(() => CustomImageView(
                        imagePath: dailyProgressModel.coinImage?.value ?? '',
                        width: _getCoinSize(),
                        height: _getCoinSize(),
                      )),
                ],
              ),
            ),
            if (dailyProgressModel.isCompleted?.value ?? false)
              Positioned.fill(
                child: Obx(() => CustomImageView(
                      imagePath: dailyProgressModel.checkImage?.value ?? '',
                      width: 21.h,
                      height: 29.h,
                    )),
              ),
            if (dailyProgressModel.isCurrentDay?.value ?? false)
              Positioned(
                top: -8.h,
                left: 22.h,
                child: Column(
                  children: [
                    Obx(() => CustomImageView(
                          imagePath: dailyProgressModel.bonusImage?.value ?? '',
                          width: 16.h,
                          height: 47.h,
                        )),
                    Positioned(
                      top: 0,
                      left: 4.h,
                      child: Obx(() => Text(
                            dailyProgressModel.bonusText?.value ?? '',
                            style: TextStyleHelper.instance.body12Bold
                                .copyWith(color: appTheme.whiteCustom),
                          )),
                    ),
                  ],
                ),
              ),
          ],
        ),
        SizedBox(height: 8.h),
        Obx(() => Text(
              dailyProgressModel.day?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            )),
        if (dailyProgressModel.futureImage?.value.isNotEmpty ?? false)
          Obx(() => CustomImageView(
                imagePath: dailyProgressModel.futureImage?.value ?? '',
                width: 20.h,
                height: 41.h,
                margin: EdgeInsets.only(top: 4.h),
              )),
      ],
    );
  }

  Color _getBackgroundColor() {
    if (dailyProgressModel.isCurrentDay?.value ?? false) {
      return Color(0xFF009F41);
    } else if (dailyProgressModel.isCompleted?.value ?? false) {
      return Color(0xFF25282D);
    } else {
      return Color(0xFF1E2024);
    }
  }

  Border? _getBorder() {
    if (!(dailyProgressModel.isCurrentDay?.value ?? false)) {
      return Border.all(color: appTheme.colorFFFFC6);
    }
    return null;
  }

  Color _getTextColor() {
    if (dailyProgressModel.isCurrentDay?.value ?? false) {
      return appTheme.whiteCustom;
    } else {
      return Color(0xFFC0C8D2);
    }
  }

  double _getCoinSize() {
    if (dailyProgressModel.isCurrentDay?.value ?? false) {
      return 40.h;
    } else {
      return 24.h;
    }
  }
}
