import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/amount_option_model.dart';

class AmountOptionItem extends StatelessWidget {
  final AmountOptionModel amountOption;
  final VoidCallback? onTap;

  AmountOptionItem({
    Key? key,
    required this.amountOption,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: onTap,
          child: Container(
            height: 50.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(6.h),
              border: (amountOption.isSelected?.value ?? false)
                  ? Border.all(color: appTheme.colorFF85D4)
                  : null,
            ),
            child: Stack(
              children: [
                if (amountOption.isHot?.value ?? false)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Stack(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle623,
                          height: 25.h,
                          width: 26.h,
                        ),
                        Positioned(
                          top: 2.h,
                          left: 4.h,
                          child: Text(
                            'HOT',
                            style: TextStyleHelper.instance.label8Bold,
                          ),
                        ),
                      ],
                    ),
                  ),
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
                              style: TextStyleHelper.instance.body12
                                  .copyWith(color: appTheme.whiteCustom),
                            ),
                          ),
                        ),
                        SizedBox(width: 4.h),
                        Text(
                          amountOption.amount?.value.toString() ?? '',
                          style: TextStyleHelper.instance.body14Bold
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                      ],
                    ),
                    if (amountOption.bonusPercentage?.value != null)
                      Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: Text(
                          '+${amountOption.bonusPercentage?.value}%Bonus',
                          style: TextStyleHelper.instance.body12Bold
                              .copyWith(color: appTheme.colorFFABB6),
                        ),
                      ),
                  ],
                ),
                if (amountOption.isSelected?.value ?? false)
                  Positioned(
                    bottom: 4.h,
                    right: 4.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup998,
                      height: 21.h,
                      width: 21.h,
                    ),
                  ),
              ],
            ),
          ),
        ));
  }
}
