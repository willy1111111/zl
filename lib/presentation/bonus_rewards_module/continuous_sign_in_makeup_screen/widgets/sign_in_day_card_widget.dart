import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/sign_in_day_model.dart';

class SignInDayCardWidget extends StatelessWidget {
  final SignInDayModel dayModel;

  SignInDayCardWidget({
    Key? key,
    required this.dayModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Container(
              width: 60.h,
              height: 62.h,
              decoration: BoxDecoration(
                color: _getBackgroundColor(),
                border: Border.all(
                  color: _getBorderColor(),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(4.h),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  if (dayModel.isActive?.value ?? false)
                    CustomImageView(
                      imagePath: dayModel.rewardIcon?.value ?? '',
                      width: 54.h,
                      height: 54.h,
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (!(dayModel.isActive?.value ?? false))
                        Text(
                          dayModel.amount?.value ?? '',
                          style: TextStyleHelper.instance.body12Bold
                              .copyWith(color: appTheme.colorFFC0C8),
                        ),
                      if (dayModel.isActive?.value ?? false)
                        Padding(
                          padding: EdgeInsets.only(top: 6.h),
                          child: Text(
                            dayModel.amount?.value ?? '',
                            style: TextStyleHelper.instance.body12Bold
                                .copyWith(color: appTheme.whiteCustom),
                          ),
                        ),
                      if (dayModel.coinIcon != null &&
                          !(dayModel.isActive?.value ?? false))
                        Stack(
                          children: [
                            CustomImageView(
                              imagePath: dayModel.coinIcon?.value ?? '',
                              width: 24.h,
                              height: 24.h,
                            ),
                            if (dayModel.isCompleted?.value ?? false)
                              Positioned(
                                top: 3.h,
                                left: dayModel.day?.value == 'Day 1'
                                    ? -1.h
                                    : dayModel.day?.value == 'Day 2'
                                        ? 0.h
                                        : 1.h,
                                child: CustomImageView(
                                  imagePath: dayModel.checkIcon?.value ?? '',
                                  width: 21.h,
                                  height: 29.h,
                                ),
                              ),
                          ],
                        ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              dayModel.day?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
            if (dayModel.isActive?.value ?? false)
              CustomImageView(
                imagePath: dayModel.arrowIcon?.value ?? '',
                width: 20.h,
                height: 41.h,
              ),
          ],
        ));
  }

  Color _getBackgroundColor() {
    if (dayModel.isActive?.value ?? false) {
      return Color(0xFF009F41);
    } else if (dayModel.isCompleted?.value ?? false) {
      return Color(0xFF25282D);
    } else {
      return Color(0xFF1E2024);
    }
  }

  Color _getBorderColor() {
    if (dayModel.isCompleted?.value ??
        false || dayModel.isActive?.value ??
        false) {
      return Color(0xFFFFC600);
    } else {
      return Color(0xFF292F36);
    }
  }
}
