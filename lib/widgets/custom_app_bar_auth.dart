import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'custom_image_view.dart';

/**
 * CustomAppBar - A flexible AppBar component that supports multiple layout variants
 * 
 * Supports various configurations:
 * - Simple back button with title
 * - Logo with balance display
 * - Action buttons (deposit, full screen, info)
 * - Custom background colors and shadows
 * - Responsive sizing using SizeUtils
 * 
 * @param backgroundColor - Background color of the app bar
 * @param height - Height of the app bar (uses default if null)
 * @param showBackButton - Whether to show back button
 * @param backButtonText - Text to show next to back icon
 * @param backButtonIcon - Path to back button icon
 * @param onBackPressed - Callback for back button press
 * @param title - Title text to display
 * @param centerTitle - Whether to center the title
 * @param showLogo - Whether to show logo
 * @param logoPath - Path to logo image
 * @param showBalance - Whether to show balance section
 * @param balanceAmount - Balance amount to display
 * @param coinIconPath - Path to coin icon
 * @param addIconPath - Path to add/plus icon
 * @param onBalancePressed - Callback for balance section press
 * @param onAddPressed - Callback for add button press
 * @param showStatusBar - Whether to show status bar decoration
 * @param statusBarPath - Path to status bar background image
 * @param actions - List of action widgets
 * @param showShadow - Whether to show shadow
 */
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.backgroundColor,
    this.height,
    this.showBackButton = false,
    this.backButtonText,
    this.backButtonIcon,
    this.onBackPressed,
    this.title,
    this.centerTitle = false,
    this.showLogo = false,
    this.logoPath,
    this.showBalance = false,
    this.balanceAmount,
    this.coinIconPath,
    this.addIconPath,
    this.onBalancePressed,
    this.onAddPressed,
    this.showStatusBar = false,
    this.statusBarPath,
    this.actions,
    this.showShadow = true,
  }) : super(key: key);

  final Color? backgroundColor;
  final double? height;
  final bool showBackButton;
  final String? backButtonText;
  final String? backButtonIcon;
  final VoidCallback? onBackPressed;
  final String? title;
  final bool centerTitle;
  final bool showLogo;
  final String? logoPath;
  final bool showBalance;
  final String? balanceAmount;
  final String? coinIconPath;
  final String? addIconPath;
  final VoidCallback? onBalancePressed;
  final VoidCallback? onAddPressed;
  final bool showStatusBar;
  final String? statusBarPath;
  final List<Widget>? actions;
  final bool showShadow;

  @override
  Size get preferredSize => Size.fromHeight(height ?? 68.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? appTheme.colorFF1B1C,
      elevation: showShadow ? 4 : 0,
      shadowColor: showShadow ? appTheme.blackCustom.withAlpha(77) : null,
      automaticallyImplyLeading: false,
      toolbarHeight: height ?? 68.h,
      flexibleSpace: Stack(
        children: [
          // Status bar background decoration
          if (showStatusBar && statusBarPath != null)
            Positioned(
              top: 7.h,
              left: 10.h,
              child: CustomImageView(
                imagePath: statusBarPath!,
                width: 356.h,
                height: 13.h,
              ),
            ),

          // Main content container
          Container(
            height: height ?? 68.h,
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildAppBarContent(
                context), // Modified: Added context parameter
          ),
        ],
      ),
    );
  }

  Widget _buildAppBarContent(BuildContext context) {
    // Modified: Added context parameter
    // Complex layout with logo and balance
    if (showLogo && showBalance) {
      return _buildLogoBalanceLayout();
    }

    // Simple layout with back button and title
    if (showBackButton || title != null) {
      return _buildSimpleLayout(context); // Modified: Pass context to method
    }

    // Custom layout with actions
    return _buildCustomLayout();
  }

  Widget _buildLogoBalanceLayout() {
    return Stack(
      children: [
        // Logo positioned on left
        if (showLogo && logoPath != null)
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomImageView(
                imagePath: logoPath!,
                width: 124.h,
                height: 28.h,
              ),
            ),
          ),

        // Balance section positioned on right
        if (showBalance)
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.centerRight,
              child: _buildBalanceSection(),
            ),
          ),
      ],
    );
  }

  Widget _buildSimpleLayout(BuildContext context) {
    // Modified: Added context parameter
    return Row(
      children: [
        // Back button
        if (showBackButton)
          _buildBackButton(context), // Modified: Pass context to method

        // Title
        if (title != null) ...[
          if (centerTitle) Expanded(child: _buildCenteredTitle()),
          if (!centerTitle) _buildLeftTitle(),
        ],

        // Spacer for centering
        if (centerTitle && !showBackButton) const Spacer(),

        // Actions
        if (actions != null) ...actions!,
      ],
    );
  }

  Widget _buildCustomLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Left side content
        if (showBackButton)
          _buildBackButton(
              context), // This will now cause an error - needs context parameter
        if (showLogo && logoPath != null && !showBalance)
          CustomImageView(
            imagePath: logoPath!,
            width: 124.h,
            height: 28.h,
          ),

        // Center content
        if (title != null && centerTitle) _buildCenteredTitle(),

        // Right side content
        if (showBalance) _buildBalanceSection(),
        if (actions != null) Row(children: actions!),
      ],
    );
  }

  Widget _buildBackButton(BuildContext context) {
    // Modified: Added context parameter
    return InkWell(
      onTap: onBackPressed ?? () => Navigator.of(context).pop(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: backButtonIcon ?? ImageConstant.img22,
            width: 24.h,
            height: 24.h,
            color: appTheme.whiteCustom,
          ),
          if (backButtonText != null) ...[
            SizedBox(width: 8.h),
            Text(
              backButtonText!,
              style: TextStyleHelper.instance.title16Medium,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildCenteredTitle() {
    return Center(
      child: Text(
        title!,
        style: TextStyleHelper.instance.title16Bold,
      ),
    );
  }

  Widget _buildLeftTitle() {
    return Text(
      title!,
      style: TextStyleHelper.instance.title16Bold,
    );
  }

  Widget _buildBalanceSection() {
    return InkWell(
      onTap: onBalancePressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (coinIconPath != null)
            CustomImageView(
              imagePath: coinIconPath!,
              width: 15.h,
              height: 16.h,
            ),
          SizedBox(width: 8.h),
          Text(
            balanceAmount ?? '₱0.00',
            style: TextStyleHelper.instance.title16Bold
                .copyWith(color: appTheme.colorFFFFC6),
          ),
          SizedBox(width: 8.h),
          if (addIconPath != null)
            InkWell(
              onTap: onAddPressed,
              child: CustomImageView(
                imagePath: addIconPath!,
                width: 16.h,
                height: 14.h,
              ),
            ),
        ],
      ),
    );
  }
}

/// Custom action button for app bar
class CustomAppBarAction extends StatelessWidget {
  const CustomAppBarAction({
    Key? key,
    required this.text,
    this.icon,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.isGradient = false,
  }) : super(key: key);

  final String text;
  final String? icon;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final bool isGradient;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 28.h,
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        decoration: BoxDecoration(
          color: backgroundColor ?? appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(14.h),
          border: borderColor != null ? Border.all(color: borderColor!) : null,
          gradient: isGradient
              ? const LinearGradient(
                  colors: [Color(0xFF85D420), Color(0xFF4CAF50)],
                )
              : null,
          boxShadow: [
            BoxShadow(
              color: appTheme.blackCustom.withAlpha(77),
              offset: Offset(0, 2.h),
              blurRadius: 2.h,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              CustomImageView(
                imagePath: icon!,
                width: 16.h,
                height: 14.h,
                color: textColor ?? appTheme.whiteCustom,
              ),
              SizedBox(width: 8.h),
            ],
            Text(
              text,
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: textColor ?? appTheme.whiteCustom),
            ),
          ],
        ),
      ),
    );
  }
}
