import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';

class EventOptionWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final List<Color> gradientColors;
  final double width;
  final double height;
  final double borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final bool? isSelected;
  final VoidCallback? onTap;

  EventOptionWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.gradientColors,
    required this.width,
    required this.height,
    required this.borderRadius,
    this.borderColor,
    this.borderWidth,
    this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
          border: borderColor != null && borderWidth != null
              ? Border.all(color: borderColor!, width: borderWidth!)
              : null,
        ),
        child: Stack(
          children: [
            Positioned(
              top: title == 'luck wheel' ? 0 : -5.h,
              left: title == 'luck wheel'
                  ? 30.h
                  : title == 'Golden Egg'
                      ? 25.h
                      : 27.h,
              child: CustomImageView(
                imagePath: imagePath,
                height: title == 'luck wheel'
                    ? 47.h
                    : title == 'Golden Egg'
                        ? 37.h
                        : 40.h,
                width: title == 'luck wheel'
                    ? 46.h
                    : title == 'Golden Egg'
                        ? 40.h
                        : 44.h,
              ),
            ),
            Positioned(
              bottom: title == 'luck wheel'
                  ? 6.h
                  : title == 'Golden Egg'
                      ? 8.h
                      : 6.h,
              left: title == 'luck wheel'
                  ? 13.h
                  : title == 'Golden Egg'
                      ? 11.h
                      : 8.h,
              child: Text(
                title,
                style: TextStyleHelper.instance.bodyTextBold.copyWith(
                    color: title == 'luck wheel'
                        ? appTheme.whiteCustom
                        : title == 'Golden Egg'
                            ? Color(0xFF3C1F60)
                            : appTheme.colorFF7310),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
