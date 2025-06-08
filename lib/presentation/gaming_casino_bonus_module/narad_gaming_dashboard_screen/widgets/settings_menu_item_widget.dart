import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/settings_menu_item_model.dart';

class SettingsMenuItemWidget extends StatelessWidget {
  final SettingsMenuItemModel settingsMenuItem;
  final VoidCallback? onTap;

  SettingsMenuItemWidget({
    Key? key,
    required this.settingsMenuItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: settingsMenuItem.icon?.value ?? '',
                  height: 20.h,
                  width: 20.h,
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: Text(
                    settingsMenuItem.title?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089, height: 1.2),
                  ),
                ),
              ],
            ),
            if (settingsMenuItem.hasButton?.value ?? false)
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF76CD01), Color(0xFF498D03)],
                  ),
                  borderRadius: BorderRadius.circular(4.h),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
                child: Text(
                  settingsMenuItem.buttonText?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              )
            else
              CustomImageView(
                imagePath: ImageConstant.imgStrokeBlueGray700,
                height: 7.h,
                width: 13.h,
              ),
          ],
        ),
      ),
    );
  }
}
