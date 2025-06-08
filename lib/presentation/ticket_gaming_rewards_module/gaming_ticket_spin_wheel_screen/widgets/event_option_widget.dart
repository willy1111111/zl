import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class EventOptionWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final List<Color> gradientColors;
  final Color? borderColor;
  final double? width;
  final double? height;
  final bool isHighlighted;
  final VoidCallback? onTap;

  EventOptionWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.gradientColors,
    this.borderColor,
    this.width,
    this.height,
    this.isHighlighted = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 90.h,
        height: height ?? 54.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(isHighlighted ? 10.h : 8.h),
          border: borderColor != null
              ? Border.all(color: borderColor!, width: 2.h)
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: imagePath,
              height: isHighlighted ? 47.h : 37.h,
              width: isHighlighted ? 46.h : 40.h,
            ),
            if (isHighlighted) SizedBox(height: 4.h),
            Text(
              title,
              style: TextStyleHelper.instance.bodyTextBold.copyWith(
                  color:
                      isHighlighted ? appTheme.whiteCustom : _getTitleColor()),
            ),
          ],
        ),
      ),
    );
  }

  Color _getTitleColor() {
    if (title == 'Golden Egg') return Color(0xFF3C1F60);
    if (title == 'Cash Voucher') return Color(0xFF731013);
    return appTheme.whiteCustom;
  }
}
