import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/gaming_category_item_model.dart';

class GamingCategoryItemWidget extends StatelessWidget {
  final GamingCategoryItemModel category;
  final bool isSelected;
  final VoidCallback? onTap;

  GamingCategoryItemWidget({
    Key? key,
    required this.category,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 48.h,
        height: 48.h,
        margin: EdgeInsets.only(bottom: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFFF7043) : appTheme.colorFF4242,
          borderRadius: BorderRadius.circular(8.h),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              category.icon?.value ?? '',
              style: TextStyleHelper.instance.body12,
            ),
            SizedBox(height: 2.h),
            Text(
              category.label?.value ?? '',
              style: TextStyleHelper.instance.label10,
            ),
          ],
        ),
      ),
    );
  }
}
