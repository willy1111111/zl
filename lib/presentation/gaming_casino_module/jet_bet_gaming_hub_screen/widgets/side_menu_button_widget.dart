import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/side_menu_button_model.dart';

class SideMenuButtonWidget extends StatelessWidget {
  final SideMenuButtonModel sideMenuButton;
  final VoidCallback? onTap;

  SideMenuButtonWidget({
    Key? key,
    required this.sideMenuButton,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 66.h,
        height: 64.h,
        margin: EdgeInsets.only(bottom: 2.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: sideMenuButton.isActive?.value ?? false
                ? [Color(0xFFFFC61E), Color(0xFFFFA001)]
                : [Color(0xFF363C41), Color(0xFF2B3035)],
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
              imagePath: sideMenuButton.icon?.value ?? '',
              height: sideMenuButton.label?.value == 'Hot' ? 30.h : 36.h,
              width: 36.h,
            ),
            SizedBox(height: sideMenuButton.label?.value == 'Hot' ? 6.h : 3.h),
            Text(
              sideMenuButton.label?.value ?? '',
              style: TextStyleHelper.instance.body12BoldArial.copyWith(
                  color: sideMenuButton.isActive?.value ?? false
                      ? Color(0xFF232B32)
                      : appTheme.colorFF8089),
            ),
          ],
        ),
      ),
    );
  }
}
