import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/settings_menu_item_model.dart';

class SettingsMenuItemWidget extends StatelessWidget {
  SettingsMenuItemWidget({
    Key? key,
    required this.settingsMenuItem,
    this.onTap,
  }) : super(key: key);

  final SettingsMenuItemModel settingsMenuItem;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: settingsMenuItem.icon?.value ?? '',
              height: settingsMenuItem.iconHeight?.value ?? 20.h,
              width: settingsMenuItem.iconWidth?.value ?? 20.h,
            ),
            SizedBox(width: 16.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    settingsMenuItem.title?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                  if (settingsMenuItem.subtitle?.value.isNotEmpty == true) ...[
                    SizedBox(height: 4.h),
                    Text(
                      settingsMenuItem.subtitle?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                  ],
                ],
              ),
            ),
            if (settingsMenuItem.showButton?.value ?? false)
              CustomButton(
                text: settingsMenuItem.buttonText?.value ?? '',
                buttonVariant: CustomButtonVariant.gradientGreen,
                onPressed: onTap,
              )
            else
              CustomImageView(
                imagePath: ImageConstant.imgStrokeBlueGray700,
                height: 13.h,
                width: 7.h,
              ),
          ],
        ),
      ),
    );
  }
}
