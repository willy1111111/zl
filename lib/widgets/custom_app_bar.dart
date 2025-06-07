import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../core/app_export.dart';
import './custom_image_view.dart';

// Modified: Moved import to top of file

/**
 * CustomAppBar - A flexible and reusable AppBar component
 * 
 * This component supports multiple variants including:
 * - Standard app bar with logo and balance
 * - Promotional header with download functionality
 * - Optional status bar display
 * - Configurable action buttons and icons
 * 
 * @param logoImagePath - Path to the logo image
 * @param balanceAmount - Balance amount to display
 * @param profileIconPath - Path to the profile/wallet icon
 * @param batteryIconPath - Path to the battery/add icon
 * @param statusBarImagePath - Optional status bar image path
 * @param showPromotionalContent - Whether to show promotional variant
 * @param promotionalTitle - Title for promotional content
 * @param appIconPath - App icon for promotional variant
 * @param backgroundImagePath - Background image for promotional variant
 * @param overlayImagePath - Overlay image for promotional variant
 * @param onDownloadTap - Callback for download button
 * @param onCloseTap - Callback for close button
 * @param showStarRating - Whether to show star rating
 * @param starCount - Number of stars to display
 */
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.logoImagePath,
    this.balanceAmount,
    this.profileIconPath,
    this.batteryIconPath,
    this.statusBarImagePath,
    this.showPromotionalContent = false,
    this.promotionalTitle,
    this.appIconPath,
    this.backgroundImagePath,
    this.overlayImagePath,
    this.onDownloadTap,
    this.onCloseTap,
    this.showStarRating = false,
    this.starCount = 5,
  }) : super(key: key);

  /// Path to the logo image
  final String? logoImagePath;

  /// Balance amount to display
  final String? balanceAmount;

  /// Path to the profile/wallet icon
  final String? profileIconPath;

  /// Path to the battery/add icon
  final String? batteryIconPath;

  /// Optional status bar image path
  final String? statusBarImagePath;

  /// Whether to show promotional content variant
  final bool showPromotionalContent;

  /// Title for promotional content
  final String? promotionalTitle;

  /// App icon for promotional variant
  final String? appIconPath;

  /// Background image for promotional variant
  final String? backgroundImagePath;

  /// Overlay image for promotional variant
  final String? overlayImagePath;

  /// Callback for download button
  final VoidCallback? onDownloadTap;

  /// Callback for close button
  final VoidCallback? onCloseTap;

  /// Whether to show star rating
  final bool showStarRating;

  /// Number of stars to display
  final int starCount;

  @override
  Size get preferredSize => Size.fromHeight(68.h);

  @override
  Widget build(BuildContext context) {
    if (showPromotionalContent) {
      return _buildPromotionalAppBar();
    }

    return AppBar(
      backgroundColor: appTheme.colorFF1B1C,
      elevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: 68.h,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF1B1C,
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFF0000,
              offset: Offset(0, 2.h),
              blurRadius: 2.h,
            ),
          ],
        ),
        child: Stack(
          children: [
            if (statusBarImagePath != null) _buildStatusBar(),
            _buildMainContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildPromotionalAppBar() {
    return AppBar(
      backgroundColor: appTheme.transparentCustom,
      elevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: 68.h,
      flexibleSpace: Container(
        height: 68.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF478A03), Color(0xFF6BA519)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Stack(
          children: [
            if (backgroundImagePath != null)
              Positioned.fill(
                child: CustomImageView(
                  imagePath: backgroundImagePath!,
                  fit: BoxFit.cover,
                ),
              ),
            if (overlayImagePath != null)
              Positioned(
                left: 0,
                top: 0,
                child: CustomImageView(
                  imagePath: overlayImagePath!,
                  width: 279.h,
                  height: 68.h,
                  fit: BoxFit.cover,
                ),
              ),
            if (appIconPath != null)
              Positioned(
                left: 12.h,
                top: 9.h,
                child: CustomImageView(
                  imagePath: appIconPath!,
                  width: 50.h,
                  height: 50.h,
                  radius: BorderRadius.circular(8.h),
                ),
              ),
            if (promotionalTitle != null)
              Positioned(
                left: 68.h,
                top: 10.h,
                child: Text(
                  promotionalTitle!,
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom, height: 1.17),
                ),
              ),
            if (showStarRating) _buildStarRating(),
            if (onDownloadTap != null) _buildDownloadButton(),
            if (onCloseTap != null) _buildCloseButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusBar() {
    return Positioned(
      top: 7.h,
      left: 10.h,
      child: CustomImageView(
        imagePath: statusBarImagePath!,
        width: 356.h,
        height: 13.h,
      ),
    );
  }

  Widget _buildMainContent() {
    return Positioned.fill(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (logoImagePath != null)
              CustomImageView(
                imagePath: logoImagePath!,
                width: 124.h,
                height: 28.h,
              ),
            _buildBalanceSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildBalanceSection() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (profileIconPath != null) ...[
          CustomImageView(
            imagePath: profileIconPath!,
            width: 15.h,
            height: 16.h,
          ),
          SizedBox(width: 7.h),
        ],
        if (balanceAmount != null)
          Text(
            balanceAmount!,
            style: TextStyleHelper.instance.title16Bold
                .copyWith(color: appTheme.colorFFFFC6, height: 1.19),
          ),
        if (batteryIconPath != null) ...[
          SizedBox(width: 10.h),
          CustomImageView(
            imagePath: batteryIconPath!,
            width: 16.h,
            height: 14.h,
          ),
        ],
      ],
    );
  }

  Widget _buildStarRating() {
    return Positioned(
      left: 68.h,
      top: 41.h,
      child: Row(
        children: List.generate(
          starCount,
          (index) => Container(
            width: 15.h,
            height: 15.h,
            margin: EdgeInsets.only(right: index < starCount - 1 ? 2.h : 0),
            child: CustomPaint(
              painter: StarPainter(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDownloadButton() {
    return Positioned(
      right: 18.h,
      top: 18.h,
      child: ElevatedButton(
        onPressed: onDownloadTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.whiteCustom,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.h),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 4.h,
          ),
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(
          'Download',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF478A, height: 1.43),
        ),
      ),
    );
  }

  Widget _buildCloseButton() {
    return Positioned(
      right: 4.h,
      top: 4.h,
      child: GestureDetector(
        onTap: onCloseTap,
        child: Container(
          width: 26.h,
          height: 26.h,
          child: Stack(
            children: [
              Positioned(
                right: 9.h,
                bottom: 8.h,
                child: Container(
                  width: 14.h,
                  height: 14.h,
                  color: appTheme.colorFF478A,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorLightGreen400,
                width: 26.h,
                height: 26.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFFFFF400)
      ..style = PaintingStyle.fill;

    final path = Path();
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final outerRadius = size.width / 2;
    final innerRadius = outerRadius * 0.4;

    for (int i = 0; i < 10; i++) {
      final angle = (i * 36.0 - 90.0) * (3.14159 / 180.0);
      final radius = i.isEven ? outerRadius : innerRadius;
      final x = centerX + radius * cos(angle);
      final y =
          centerY + radius * math.sin(angle); // Modified: Added math prefix

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

// Helper function for cos calculation
double cos(double radians) {
  return math.cos(radians);
}
