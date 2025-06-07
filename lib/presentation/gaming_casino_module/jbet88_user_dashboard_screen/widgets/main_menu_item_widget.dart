import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/main_menu_item_model.dart';

class MainMenuItemWidget extends StatelessWidget {
  MainMenuItemWidget({
    Key? key,
    required this.mainMenuItem,
    this.onTap,
  }) : super(key: key);

  final MainMenuItemModel mainMenuItem;
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
              imagePath: mainMenuItem.icon?.value ?? '',
              height: 36.h,
              width: 36.h,
            ),
            SizedBox(width: 16.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mainMenuItem.title?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  if (mainMenuItem.subtitle?.value.isNotEmpty == true) ...[
                    SizedBox(height: 4.h),
                    Text(
                      mainMenuItem.subtitle?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFFABB6),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                  if (mainMenuItem.highlightText?.value.isNotEmpty == true) ...[
                    SizedBox(height: 2.h),
                    Text(
                      mainMenuItem.highlightText?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                  ],
                ],
              ),
            ),
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
