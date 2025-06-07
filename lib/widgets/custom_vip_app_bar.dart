import 'package:flutter/material.dart';

import '../core/app_export.dart';
import './custom_image_view.dart';

/**
 * CustomVipAppBar - A reusable VIP-themed app bar component
 * 
 * Features:
 * - Customizable height (standard or compact)
 * - Leading icon/back button support
 * - Title text customization
 * - Currency display with icon and amount
 * - Trailing action icon
 * - Optional status bar overlay
 * - Consistent VIP styling with dark theme
 * 
 * @param title - The main title text displayed in the app bar
 * @param amount - The currency amount to display
 * @param leadingIcon - Path to the leading icon (back button/menu)
 * @param currencyIcon - Path to the currency icon
 * @param trailingIcon - Path to the trailing action icon
 * @param isCompact - Whether to use compact height (60h) or standard (86h)
 * @param showStatusBar - Whether to show status bar overlay
 * @param onLeadingPressed - Callback for leading icon tap
 * @param onTrailingPressed - Callback for trailing icon tap
 * @param backgroundColor - Background color of the app bar
 * @param titleColor - Color of the title text
 * @param amountColor - Color of the amount text
 */
class CustomVipAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomVipAppBar({
    Key? key,
    this.title,
    this.amount,
    this.leadingIcon,
    this.currencyIcon,
    this.trailingIcon,
    this.isCompact,
    this.showStatusBar,
    this.onLeadingPressed,
    this.onTrailingPressed,
    this.backgroundColor,
    this.titleColor,
    this.amountColor,
  }) : super(key: key);

  /// The main title text displayed in the app bar
  final String? title;

  /// The currency amount to display
  final String? amount;

  /// Path to the leading icon (back button/menu)
  final String? leadingIcon;

  /// Path to the currency icon
  final String? currencyIcon;

  /// Path to the trailing action icon
  final String? trailingIcon;

  /// Whether to use compact height (60h) or standard (86h)
  final bool? isCompact;

  /// Whether to show status bar overlay
  final bool? showStatusBar;

  /// Callback for leading icon tap
  final VoidCallback? onLeadingPressed;

  /// Callback for trailing icon tap
  final VoidCallback? onTrailingPressed;

  /// Background color of the app bar
  final Color? backgroundColor;

  /// Color of the title text
  final Color? titleColor;

  /// Color of the amount text
  final Color? amountColor;

  @override
  Size get preferredSize => Size.fromHeight((isCompact ?? false) ? 60.h : 86.h);

  @override
  Widget build(BuildContext context) {
    final appBarHeight = (isCompact ?? false) ? 60.h : 86.h;
    final effectiveTitle = title ?? "Vip";
    final effectiveAmount = amount ?? "₱19800.00";
    final effectiveLeadingIcon = leadingIcon ?? "assets/images/img_stroke.svg";
    final effectiveCurrencyIcon =
        currencyIcon ?? "assets/images/img_group_736.svg";
    final effectiveTrailingIcon = trailingIcon ?? "assets/images/img_1.png";
    final shouldShowStatusBar = showStatusBar ?? false;

    return AppBar(
      backgroundColor: backgroundColor ?? Color(0xFF1B1C1F),
      elevation: 0,
      shadowColor: appTheme.blackCustom,
      toolbarHeight: appBarHeight,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: backgroundColor ?? Color(0xFF1B1C1F),
          boxShadow: [
            BoxShadow(
              color: appTheme.blackCustom,
              offset: Offset(0, 2),
              blurRadius: 2,
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                children: [
                  _buildLeadingSection(),
                  SizedBox(width: 12.h),
                  _buildTitleSection(effectiveTitle),
                  Spacer(),
                  _buildTrailingSection(effectiveAmount, effectiveCurrencyIcon,
                      effectiveTrailingIcon),
                ],
              ),
            ),
            if (shouldShowStatusBar) _buildStatusBarOverlay(),
          ],
        ),
      ),
    );
  }

  Widget _buildLeadingSection() {
    return GestureDetector(
      onTap: onLeadingPressed,
      child: CustomImageView(
        imagePath: leadingIcon ?? ImageConstant.imgStroke,
        height: (isCompact ?? false) ? 14.h : 16.h,
        width: (isCompact ?? false) ? 14.h : 16.h,
      ),
    );
  }

  Widget _buildTitleSection(String effectiveTitle) {
    return Expanded(
      child: Text(
        effectiveTitle,
        style: TextStyleHelper.instance.title16Bold
            .copyWith(color: titleColor ?? appTheme.whiteCustom),
      ),
    );
  }

  Widget _buildTrailingSection(String effectiveAmount,
      String effectiveCurrencyIcon, String effectiveTrailingIcon) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: effectiveCurrencyIcon,
          height: (isCompact ?? false) ? 15.h : 16.h,
          width: (isCompact ?? false) ? 15.h : 16.h,
        ),
        SizedBox(width: 8.h),
        Text(
          effectiveAmount,
          style: TextStyleHelper.instance.title16Bold
              .copyWith(color: amountColor ?? Color(0xFFFFC600)),
        ),
        SizedBox(width: 12.h),
        GestureDetector(
          onTap: onTrailingPressed,
          child: CustomImageView(
            imagePath: effectiveTrailingIcon,
            height: (isCompact ?? false) ? 14.h : 16.h,
            width: (isCompact ?? false) ? 14.h : 16.h,
          ),
        ),
      ],
    );
  }

  Widget _buildStatusBarOverlay() {
    return Positioned(
      top: 8.h,
      left: 12.h,
      child: CustomImageView(
        imagePath: ImageConstant.img1Black900,
        width: 356.h,
        height: 12.h,
      ),
    );
  }
}
