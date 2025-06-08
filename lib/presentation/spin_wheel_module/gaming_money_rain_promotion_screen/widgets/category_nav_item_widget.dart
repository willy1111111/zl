import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/category_nav_item_model.dart';

class CategoryNavItemWidget extends StatelessWidget {
  final CategoryNavItemModel categoryItem;
  final bool isSelected;
  final VoidCallback? onTap;

  const CategoryNavItemWidget({
    Key? key,
    required this.categoryItem,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 66.h,
        height: 64.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isSelected
                ? [Color(0xFFFFC61E), Color(0xFFFFA001)]
                : [Color(0xFF363C41), Color(0xFF2B3035)],
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.h),
            bottomLeft: Radius.circular(8.h),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: categoryItem.iconPath?.value ?? '',
              height: 36.h,
              width: 36.h,
            ),
            SizedBox(height: 4.h),
            Text(
              categoryItem.title?.value ?? '',
              style: TextStyleHelper.instance.body12BoldArial.copyWith(
                  color:
                      isSelected ? appTheme.blackCustom : appTheme.colorFF8089),
            ),
          ],
        ),
      ),
    );
  }
}
