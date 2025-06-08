import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/sidebar_menu_item_model.dart';

class SidebarMenuItem extends StatelessWidget {
  final SidebarMenuItemModel sidebarModel;
  final VoidCallback? onTap;

  SidebarMenuItem({
    Key? key,
    required this.sidebarModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 66.h,
        height: 56.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: (sidebarModel.isSelected?.value ?? false)
                ? [Color(0xFFFFC61E), Color(0xFFFF9F00)]
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
              imagePath: sidebarModel.iconPath?.value ?? '',
              height: sidebarModel.iconPath?.value ==
                      ImageConstant.imgVectorDeepOrangeA400
                  ? 27.h
                  : 32.h,
              width: 32.h,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 4.h),
            Text(
              sidebarModel.label?.value ?? '',
              style: TextStyleHelper.instance.body12BoldArial.copyWith(
                  color: (sidebarModel.isSelected?.value ?? false)
                      ? Color(0xFF232B32)
                      : appTheme.colorFF8089),
            ),
          ],
        ),
      ),
    );
  }
}
