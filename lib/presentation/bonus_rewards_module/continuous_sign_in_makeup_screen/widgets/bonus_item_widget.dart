import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/bonus_model.dart';

class BonusItemWidget extends StatelessWidget {
  final BonusModel bonusModel;

  BonusItemWidget({
    Key? key,
    required this.bonusModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Container(
              width: 66.h,
              height: 66.h,
              decoration: BoxDecoration(
                border: Border.all(color: appTheme.whiteCustom),
                borderRadius: BorderRadius.circular(12.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.color99FFF3,
                    offset: Offset(0, 2),
                    blurRadius: 3,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: bonusModel.backgroundIcon?.value ?? '',
                    width: 64.h,
                    height: 66.h,
                  ),
                  CustomImageView(
                    imagePath: bonusModel.mainIcon?.value ?? '',
                    width: bonusModel.mainIcon?.value.contains('39x44') ?? false
                        ? 39.h
                        : 33.h,
                    height:
                        bonusModel.mainIcon?.value.contains('39x44') ?? false
                            ? 44.h
                            : 35.h,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              bonusModel.title?.value ?? '',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFFFFF4),
            ),
          ],
        ));
  }
}
