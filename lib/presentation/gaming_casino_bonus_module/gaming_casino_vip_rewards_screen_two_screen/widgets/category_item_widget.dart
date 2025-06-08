import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/gaming_casino_vip_rewards_screen_two_model.dart';

class CategoryItemWidget extends StatelessWidget {
  final CategoryItemModel categoryItem;
  final bool isSelected;
  final VoidCallback? onTap;

  const CategoryItemWidget({
    Key? key,
    required this.categoryItem,
    this.isSelected = false,
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
          gradient: isSelected
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
              imagePath: categoryItem.iconPath?.value ?? '',
              width: 36.h,
              height: isSelected ? 30.h : 36.h,
            ),
            SizedBox(height: isSelected ? 6.h : 1.h),
            ShaderMask(
              shaderCallback: isSelected
                  ? (bounds) => LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF232B32), Color(0xFF25282D)],
                      ).createShader(bounds)
                  : (bounds) => LinearGradient(
                        colors: [Color(0xFF808994), Color(0xFF808994)],
                      ).createShader(bounds),
              child: Text(
                categoryItem.title?.value ?? '',
                style: TextStyleHelper.instance.body12Bold.copyWith(
                    color: isSelected
                        ? appTheme.whiteCustom
                        : appTheme.colorFF8089,
                    height: 1.17),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
