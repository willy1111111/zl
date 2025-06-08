import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/category_item_model.dart';

class CategoryItemWidget extends StatelessWidget {
  final CategoryItemModel categoryModel;
  final bool isSelected;
  final VoidCallback? onTap;

  const CategoryItemWidget({
    Key? key,
    required this.categoryModel,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 64.h,
        margin: EdgeInsets.only(bottom: 4.h),
        decoration: BoxDecoration(
          gradient: isSelected
              ? LinearGradient(
                  colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : LinearGradient(
                  colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
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
              imagePath: categoryModel.icon?.value ?? '',
              height: 36.h,
              width: 36.h,
            ),
            SizedBox(height: 1.h),
            Text(
              categoryModel.title?.value ?? '',
              style: TextStyleHelper.instance.body12Bold2.copyWith(
                  color:
                      isSelected ? appTheme.whiteCustom : appTheme.colorFF8089),
            ),
          ],
        ),
      ),
    );
  }
}
