import 'package:flutter/material.dart';

import '../core/app_export.dart';
import './custom_image_view.dart';

/**
 * CustomBonusGrid - A responsive grid component displaying bonus cards with gradient backgrounds
 * 
 * Features:
 * - 2-column grid layout with configurable spacing
 * - Individual bonus cards with customizable gradients, titles, and amounts
 * - Positioned bonus icon in top-right corner of each card
 * - Support for different text alignments and border radius
 * - Fully responsive design using SizeUtils extensions
 * 
 * @param bonusItems - List of CustomBonusItem objects containing card data
 * @param crossAxisSpacing - Horizontal spacing between grid items
 * @param mainAxisSpacing - Vertical spacing between grid items
 * @param padding - Padding around the entire grid
 */
class CustomBonusGrid extends StatelessWidget {
  const CustomBonusGrid({
    Key? key,
    required this.bonusItems,
    this.crossAxisSpacing,
    this.mainAxisSpacing,
    this.padding,
  }) : super(key: key);

  /// List of bonus items to display in the grid
  final List<CustomBonusItem> bonusItems;

  /// Horizontal spacing between grid items
  final double? crossAxisSpacing;

  /// Vertical spacing between grid items
  final double? mainAxisSpacing;

  /// Padding around the entire grid
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.all(16.h),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: crossAxisSpacing ?? 16.h,
          mainAxisSpacing: mainAxisSpacing ?? 16.h,
          childAspectRatio: 1.2,
        ),
        itemCount: bonusItems.length,
        itemBuilder: (context, index) {
          return _buildBonusCard(bonusItems[index]);
        },
      ),
    );
  }

  Widget _buildBonusCard(CustomBonusItem item) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: item.gradientColors ??
              [
                appTheme.colorFF14BF,
                appTheme.colorFF006C,
              ],
        ),
        borderRadius: BorderRadius.circular(item.borderRadius ?? 7.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          // Positioned icon in top-right corner
          Positioned(
            top: item.iconTopPosition ?? 7.h,
            right: item.iconRightPosition ?? 7.h,
            child: CustomImageView(
              imagePath: item.iconPath ?? ImageConstant.imgJb47x49,
              height: 47.h,
              width: 49.h,
            ),
          ),
          // Content
          Column(
            crossAxisAlignment:
                item.titleAlignment == CustomTextAlignment.center
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Title
              Text(
                item.title,
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.whiteCustom),
                textAlign: item.titleAlignment == CustomTextAlignment.center
                    ? TextAlign.center
                    : TextAlign.left,
              ),
              SizedBox(height: item.spacing ?? 4.h),
              // Amount
              Text(
                item.amount,
                style: TextStyleHelper.instance.title16Bold
                    .copyWith(color: appTheme.whiteCustom),
                textAlign: item.amountAlignment == CustomTextAlignment.center
                    ? TextAlign.center
                    : TextAlign.left,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Data model for individual bonus card items
class CustomBonusItem {
  const CustomBonusItem({
    required this.title,
    required this.amount,
    this.gradientColors,
    this.borderRadius,
    this.iconPath,
    this.iconTopPosition,
    this.iconRightPosition,
    this.titleAlignment,
    this.amountAlignment,
    this.spacing,
  });

  /// Title text displayed on the card
  final String title;

  /// Amount text displayed on the card
  final String amount;

  /// Gradient colors for the card background
  final List<Color>? gradientColors;

  /// Border radius for the card corners
  final double? borderRadius;

  /// Path to the icon image
  final String? iconPath;

  /// Top position of the icon
  final double? iconTopPosition;

  /// Right position of the icon
  final double? iconRightPosition;

  /// Text alignment for the title
  final CustomTextAlignment? titleAlignment;

  /// Text alignment for the amount
  final CustomTextAlignment? amountAlignment;

  /// Spacing between title and amount
  final double? spacing;
}

/// Enum for text alignment options
enum CustomTextAlignment {
  left,
  center,
}
