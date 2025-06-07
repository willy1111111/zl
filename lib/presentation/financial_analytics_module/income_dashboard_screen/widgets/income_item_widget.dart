import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/income_item_model.dart';

class IncomeItemWidget extends StatelessWidget {
  final IncomeItemModel incomeItem;

  IncomeItemWidget({
    Key? key,
    required this.incomeItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 36.h,
                width: 36.h,
                decoration: BoxDecoration(
                  color: incomeItem.iconBackgroundColor?.value ??
                      appTheme.blueCustom,
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
                    imagePath: incomeItem.iconPath?.value ?? '',
                    height: 22.h,
                    width: 22.h,
                  ),
                ),
              ),
              SizedBox(width: 12.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    incomeItem.title?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFFC0C8),
                  ),
                  if (incomeItem.subtitle?.value.isNotEmpty == true)
                    Text(
                      incomeItem.subtitle?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF7683),
                    ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                incomeItem.amount?.value ?? '',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFFFC6),
              ),
              if (incomeItem.showArrow?.value ?? false) ...[
                SizedBox(width: 8.h),
                CustomImageView(
                  imagePath: ImageConstant.imgFrame14627,
                  height: 10.h,
                  width: 10.h,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
