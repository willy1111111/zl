import 'package:flutter/material.dart';

import '../core/app_export.dart';
import './custom_image_view.dart';

/**
 * CustomBottomNavigationBar - A flexible bottom navigation bar component
 * 
 * Features:
 * - Supports multiple navigation items with icons and labels
 * - Active/inactive state management with visual indicators
 * - Customizable colors and styling
 * - Special center item support for floating buttons
 * - Responsive design with proper sizing
 * - Navigation callback with route support
 * 
 * @param bottomBarItemList - List of navigation items
 * @param selectedIndex - Currently selected item index
 * @param onChanged - Callback when item is tapped
 * @param backgroundColor - Background color of the bar
 * @param height - Height of the navigation bar
 * @param activeColor - Color for active item text and indicator
 * @param inactiveColor - Color for inactive item text
 * @param showActiveIndicator - Whether to show active indicator bar
 * @param hasShadow - Whether to show shadow effect
 */
class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.bottomBarItemList,
    required this.onChanged,
    this.selectedIndex = 0,
    this.backgroundColor,
    this.height,
    this.activeColor,
    this.inactiveColor,
    this.showActiveIndicator,
    this.hasShadow,
  }) : super(key: key);

  /// List of bottom navigation items
  final List<CustomBottomNavigationItem> bottomBarItemList;

  /// Current selected index
  final int selectedIndex;

  /// Callback function when item is tapped
  final Function(int) onChanged;

  /// Background color of the navigation bar
  final Color? backgroundColor;

  /// Height of the navigation bar
  final double? height;

  /// Color for active item
  final Color? activeColor;

  /// Color for inactive items
  final Color? inactiveColor;

  /// Whether to show active indicator
  final bool? showActiveIndicator;

  /// Whether to show shadow effect
  final bool? hasShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 60.h,
      decoration: BoxDecoration(
        color: backgroundColor ?? appTheme.colorFF1112,
        boxShadow: hasShadow ?? true
            ? [
                BoxShadow(
                  color: appTheme.colorFF8888,
                  offset: const Offset(0, 4),
                  blurRadius: 4.h,
                ),
              ]
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          bottomBarItemList.length,
          (index) => _buildNavigationItem(index),
        ),
      ),
    );
  }

  Widget _buildNavigationItem(int index) {
    final item = bottomBarItemList[index];
    final isSelected = selectedIndex == index;
    final isSpecialItem = item.isSpecialItem ?? false;

    return GestureDetector(
      onTap: () => onChanged(index),
      child: isSpecialItem
          ? _buildSpecialNavigationItem(item, isSelected)
          : _buildRegularNavigationItem(item, isSelected),
    );
  }

  Widget _buildRegularNavigationItem(
      CustomBottomNavigationItem item, bool isSelected) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: isSelected && item.activeIcon != null
              ? item.activeIcon!
              : item.icon,
          height: 20.h,
          width: 20.h,
        ),
        SizedBox(height: 1.h),
        Text(
          item.title,
          style: TextStyleHelper.instance.body12.copyWith(
              color: isSelected
                  ? (activeColor ?? appTheme.colorFFFFFF)
                  : (inactiveColor ?? appTheme.colorFF8089)),
        ),
        if (showActiveIndicator ?? true && isSelected) ...[
          SizedBox(height: 2.h),
          Container(
            width: 34.h,
            height: 3.h,
            decoration: BoxDecoration(
              color: activeColor ?? appTheme.colorFF85D4,
              borderRadius: BorderRadius.circular(1.h),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildSpecialNavigationItem(
      CustomBottomNavigationItem item, bool isSelected) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (item.specialIcon != null)
          Padding(
            padding: EdgeInsets.only(bottom: 27.h),
            child: CustomImageView(
              imagePath: item.specialIcon!,
              height: 54.h,
              width: 54.h,
            ),
          ),
        Text(
          item.title,
          style: TextStyleHelper.instance.body12Bold.copyWith(
              color: isSelected
                  ? (activeColor ?? appTheme.colorFF85D4)
                  : (inactiveColor ?? appTheme.colorFF8089)),
        ),
      ],
    );
  }
}

/// Data model for bottom navigation items
class CustomBottomNavigationItem {
  const CustomBottomNavigationItem({
    required this.icon,
    required this.title,
    required this.routeName,
    this.activeIcon,
    this.specialIcon,
    this.isSpecialItem,
  });

  /// Regular icon path
  final String icon;

  /// Active state icon path (optional)
  final String? activeIcon;

  /// Special floating icon for center items (optional)
  final String? specialIcon;

  /// Item title/label
  final String title;

  /// Route name for navigation
  final String routeName;

  /// Whether this is a special center item
  final bool? isSpecialItem;
}
