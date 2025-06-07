import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/income_item_model.dart';

class IncomeItemWidget extends StatelessWidget {
  final IncomeItemModel incomeItem;

  IncomeItemWidget({
    Key? key,
    required this.incomeItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.h,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: Row(
        children: [
          Container(
            width: 62.h,
            height: 60.h,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: incomeItem.imagePath?.value ?? '',
                  width: 62.h,
                  height: 60.h,
                  fit: BoxFit.contain,
                ),
                Positioned(
                  top: 15.h,
                  left: 20.h,
                  child: Text(
                    incomeItem.number?.value ?? '',
                    style: TextStyleHelper.instance.title22Bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      if (incomeItem.amount?.value.startsWith('UP TO') ==
                              true ||
                          incomeItem.amount?.value.endsWith('%') == true) ...[
                        TextSpan(
                          text: incomeItem.amount?.value ?? '',
                          style: TextStyleHelper.instance.body15Bold
                              .copyWith(color: appTheme.colorFFFFC6),
                        ),
                        TextSpan(
                          text: incomeItem.title?.value ?? '',
                          style: TextStyleHelper.instance.body15Bold,
                        ),
                      ] else ...[
                        TextSpan(
                          text: incomeItem.title?.value ?? '',
                          style: TextStyleHelper.instance.body15Bold,
                        ),
                        TextSpan(
                          text: incomeItem.amount?.value ?? '',
                          style: TextStyleHelper.instance.body15Bold
                              .copyWith(color: appTheme.colorFFFFC6),
                        ),
                        if (incomeItem.subtitle?.value.isNotEmpty == true)
                          TextSpan(
                            text: incomeItem.subtitle?.value ?? '',
                            style: TextStyleHelper.instance.body15Bold,
                          ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16.h),
          CustomImageView(
            imagePath: incomeItem.arrowPath?.value ?? '',
            width: 28.h,
            height: 28.h,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
