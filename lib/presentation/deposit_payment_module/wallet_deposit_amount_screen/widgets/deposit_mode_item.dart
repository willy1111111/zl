import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/deposit_method_model.dart';

class DepositModeItem extends StatelessWidget {
  final DepositMethodModel depositMethod;
  final bool isSelected;
  final VoidCallback onTap;

  const DepositModeItem({
    Key? key,
    required this.depositMethod,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 74.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          border: isSelected ? Border.all(color: appTheme.colorFF85D4) : null,
          borderRadius: BorderRadius.circular(6.h),
        ),
        padding: EdgeInsets.all(8.h),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: depositMethod.icon?.value ?? '',
                  height: 36.h,
                  width: 36.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 4.h),
                Text(
                  depositMethod.name?.value ?? '',
                  style: TextStyleHelper.instance.body14Bold.copyWith(
                      color: isSelected
                          ? appTheme.whiteCustom
                          : appTheme.colorFF8089),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            if (isSelected)
              Positioned(
                top: 8.h,
                right: 8.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup998,
                  height: 21.h,
                  width: 21.h,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
