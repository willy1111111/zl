import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/menu_option_item_model.dart';

class MenuOptionItem extends StatelessWidget {
  final MenuOptionItemModel menuOptionModel;
  final VoidCallback? onTap;

  MenuOptionItem({
    Key? key,
    required this.menuOptionModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: menuOptionModel.icon?.value ?? '',
              width: 22.h,
              height: 20.h,
            ),
            SizedBox(width: 16.h),
            Expanded(
              child: Text(
                menuOptionModel.title?.value ?? '',
                style: TextStyleHelper.instance.body14Bold2
                    .copyWith(color: appTheme.colorFF8089, height: 1.0),
              ),
            ),
            if (menuOptionModel.showInstallButton?.value ?? false) ...[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF76CD01), Color(0xFF498D03)],
                  ),
                  borderRadius: BorderRadius.circular(4.h),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                child: Text(
                  'INSTALALL',
                  style: TextStyleHelper.instance.body12Bold2
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ),
              SizedBox(width: 8.h),
            ],
            CustomImageView(
              imagePath: (menuOptionModel.showSpecialIcon?.value ?? false)
                  ? ImageConstant.imgComponent7
                  : ImageConstant.imgStrokeBlueGray700,
              width: (menuOptionModel.showSpecialIcon?.value ?? false)
                  ? 20.h
                  : 7.h,
              height: (menuOptionModel.showSpecialIcon?.value ?? false)
                  ? 20.h
                  : 13.h,
            ),
          ],
        ),
      ),
    );
  }
}
