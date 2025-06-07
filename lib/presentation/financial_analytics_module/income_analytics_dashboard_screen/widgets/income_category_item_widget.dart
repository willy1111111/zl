import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/income_category_model.dart';

class IncomeCategoryItemWidget extends StatelessWidget {
  final IncomeCategoryModel incomeCategory;

  IncomeCategoryItemWidget({
    Key? key,
    required this.incomeCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 36.h,
          width: 36.h,
          decoration: BoxDecoration(
            color: incomeCategory.backgroundColor?.value ?? Color(0xFF85D420),
            borderRadius: BorderRadius.circular(8.h),
            boxShadow: [
              BoxShadow(
                color: appTheme.color888888,
                offset: Offset(0, 4.h),
                blurRadius: 4.h,
              ),
            ],
          ),
          child: Center(
            child: CustomImageView(
              imagePath: incomeCategory.iconPath?.value ?? '',
              height: 22.h,
              width: 22.h,
            ),
          ),
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                incomeCategory.title?.value ?? '',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFC0C8),
              ),
              if (incomeCategory.showSubtitle?.value ?? false)
                Row(
                  children: [
                    Text(
                      incomeCategory.amount?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFFFFC6),
                    ),
                    SizedBox(width: 8.h),
                    Expanded(
                      child: Container(
                        height: 1.h,
                        color: appTheme.whiteCustom,
                      ),
                    ),
                    SizedBox(width: 8.h),
                    Text(
                      incomeCategory.subtitle?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF7683),
                    ),
                    SizedBox(width: 4.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame14627,
                      height: 10.h,
                      width: 10.h,
                    ),
                  ],
                )
              else
                Text(
                  incomeCategory.amount?.value ?? '',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFFFFC6),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
