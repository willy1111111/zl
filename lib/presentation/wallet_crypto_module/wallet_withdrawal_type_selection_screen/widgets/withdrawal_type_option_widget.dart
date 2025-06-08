import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/withdrawal_type_model.dart';

class WithdrawalTypeOptionWidget extends StatelessWidget {
  final WithdrawalTypeModel withdrawalType;
  final VoidCallback? onTap;

  const WithdrawalTypeOptionWidget({
    Key? key,
    required this.withdrawalType,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 305.h,
        height: 73.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.h),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: withdrawalType.gradientColors?.value ??
                [appTheme.greyCustom, appTheme.greyCustom],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 16.h,
              top: 11.h,
              child: Obx(() => CustomImageView(
                    imagePath: withdrawalType.iconPath?.value ?? '',
                    height: 46.h,
                    width: 46.h,
                  )),
            ),
            Positioned(
              right: 17.h,
              top: 20.h,
              child: Obx(() => Container(
                    width: 32.h,
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: withdrawalType.addButtonColor?.value ??
                          appTheme.whiteCustom,
                      borderRadius: BorderRadius.circular(16.h),
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: withdrawalType.addIconPath?.value ?? '',
                        height: 17.h,
                        width: 17.h,
                      ),
                    ),
                  )),
            ),
            Positioned(
              left: 72.h,
              top: 26.h,
              child: Obx(() => Text(
                    withdrawalType.title?.value ?? '',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(height: 1.21),
                  )),
            ),
            Positioned(
              right: 103.h,
              top: 33.h,
              child: Obx(() => CustomImageView(
                    imagePath: withdrawalType.arrowIconPath?.value ?? '',
                    height: 16.h,
                    width: 8.h,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
