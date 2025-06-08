import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/deposit_tier_model.dart';

class DepositTierItemWidget extends StatelessWidget {
  final DepositTierModel tier;
  final VoidCallback? onTap;

  DepositTierItemWidget({
    Key? key,
    required this.tier,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFFFFCB,
          borderRadius: BorderRadius.circular(8.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFFFFF6,
              offset: Offset(1.h, 1.h),
              blurRadius: 1.h,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 92.h,
              padding: EdgeInsets.all(7.h),
              child: Column(
                children: [
                  Text(
                    tier.tierNumber?.value ?? '',
                    style: TextStyleHelper.instance.title17Bold
                        .copyWith(height: 0.71),
                  ),
                  Text(
                    tier.tierType?.value ?? '',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF6C0A, height: 1.0),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12.h),
                decoration: BoxDecoration(
                  color: appTheme.colorFFF9DB,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6.h),
                    bottomRight: Radius.circular(6.h),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.whiteCustom,
                      offset: Offset(0, 1.h),
                      blurRadius: 1.h,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Extra',
                          style: TextStyleHelper.instance.body12Bold
                              .copyWith(color: appTheme.colorFF9134),
                        ),
                        SizedBox(width: 2.h),
                        Text(
                          tier.extraPercentage?.value ?? '',
                          style: TextStyleHelper.instance.headline24Bold
                              .copyWith(height: 0.79),
                        ),
                        SizedBox(width: 2.h),
                        Text(
                          '%',
                          style: TextStyleHelper.instance.body12Bold
                              .copyWith(color: appTheme.colorFFFF2D),
                        ),
                      ],
                    ),
                    Text(
                      '+',
                      style: TextStyleHelper.instance.title18Bold
                          .copyWith(color: appTheme.colorFF9134),
                    ),
                    Row(
                      children: [
                        Text(
                          tier.bonusPercentage?.value ?? '',
                          style: TextStyleHelper.instance.headline24Bold
                              .copyWith(height: 0.79),
                        ),
                        SizedBox(width: 2.h),
                        Text(
                          '%',
                          style: TextStyleHelper.instance.body12Bold
                              .copyWith(color: appTheme.colorFFFF2D),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPolygon146x54,
                          width: 54.h,
                          height: 46.h,
                        ),
                        Positioned(
                          top: 0.h,
                          left: 1.h,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgPolygon244x51,
                            width: 51.h,
                            height: 44.h,
                          ),
                        ),
                        Positioned(
                          top: 3.h,
                          left: 12.h,
                          child: Column(
                            children: [
                              Text(
                                'up to',
                                style: TextStyleHelper.instance.body12Bold
                                    .copyWith(color: appTheme.whiteCustom),
                              ),
                              Text(
                                '${tier.upToPercentage?.value ?? ''}%',
                                style: TextStyleHelper.instance.title18Bold
                                    .copyWith(color: appTheme.colorFFFFF8),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
