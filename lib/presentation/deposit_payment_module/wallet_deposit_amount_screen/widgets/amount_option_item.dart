import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/amount_option_model.dart';

class AmountOptionItem extends StatelessWidget {
  final AmountOptionModel amountOption;
  final bool isSelected;
  final VoidCallback onTap;

  const AmountOptionItem({
    Key? key,
    required this.amountOption,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          border: isSelected ? Border.all(color: appTheme.colorFF85D4) : null,
          borderRadius: BorderRadius.circular(6.h),
        ),
        padding: EdgeInsets.all(12.h),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 16.h,
                      height: 16.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFFFFC6,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '₱',
                          style: TextStyleHelper.instance.body13,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.h),
                    Text(
                      amountOption.amount?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ],
                ),
                if ((amountOption.bonus?.value ?? '').isNotEmpty)
                  Padding(
                    padding: EdgeInsets.only(top: 4.h),
                    child: Text(
                      amountOption.bonus?.value ?? '',
                      style: TextStyleHelper.instance.body12
                          .copyWith(color: appTheme.colorFFABB6),
                    ),
                  ),
              ],
            ),
            if (isSelected)
              Positioned(
                top: 4.h,
                right: 4.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup998,
                  height: 21.h,
                  width: 21.h,
                ),
              ),
            if (amountOption.hasHotBadge?.value ?? false)
              Positioned(
                top: 0,
                left: 0,
                child: amountOption.amount?.value == '2000'
                    ? CustomImageView(
                        imagePath: ImageConstant.imgHot,
                        height: 25.h,
                        width: 26.h,
                      )
                    : Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFFF6B6B), Color(0xFFFF8E8E)],
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7.h),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.h, vertical: 2.h),
                        child: Text(
                          'HOT',
                          style: TextStyleHelper.instance.label8Bold,
                        ),
                      ),
              ),
          ],
        ),
      ),
    );
  }
}
