import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_category_model.dart';

class GameCategoryItem extends StatelessWidget {
  final GameCategoryModel gameCategory;
  final VoidCallback? onTap;

  GameCategoryItem({
    Key? key,
    required this.gameCategory,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: onTap,
          child: Container(
            height: 64.h,
            decoration: BoxDecoration(
              gradient: (gameCategory.isSelected?.value ?? false) &&
                      (gameCategory.hasGradient?.value ?? false)
                  ? LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFFC61E), Color(0xFFFFA001)],
                    )
                  : LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF363C41), Color(0xFF2B3035)],
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
                  imagePath: gameCategory.icon?.value ?? '',
                  height: 36.h,
                  width: 36.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 4.h),
                Text(
                  gameCategory.title?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold2.copyWith(
                      color: (gameCategory.isSelected?.value ?? false)
                          ? appTheme.whiteCustom
                          : appTheme.colorFF8089),
                ),
              ],
            ),
          ),
        ));
  }
}
