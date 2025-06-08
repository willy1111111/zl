import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/settings_menu_item_model.dart';

class SettingsMenuItemWidget extends StatelessWidget {
  final SettingsMenuItemModel settingsMenuItemModel;
  final VoidCallback? onTap;

  SettingsMenuItemWidget({
    Key? key,
    required this.settingsMenuItemModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: settingsMenuItemModel.icon?.value ?? '',
                    height: 22.h,
                    width: 22.h,
                  ),
                  SizedBox(width: 12.h),
                  Expanded(
                    child: Text(
                      settingsMenuItemModel.title?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold2
                          .copyWith(color: appTheme.colorFF8089, height: 1.2),
                    ),
                  ),
                ],
              ),
            ),
            if (settingsMenuItemModel.hasButton?.value ?? false)
              CustomButton(
                text: 'INSTALALL',
                onPressed: () {
                  // Handle install button
                },
                backgroundColor: appTheme.colorFF76CD,
                borderRadius: 4.h,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
              )
            else
              CustomImageView(
                imagePath: ImageConstant.imgStrokeBlueGray70001,
                height: 7.h,
                width: 13.h,
              ),
          ],
        ),
      ),
    );
  }
}
