import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/side_navigation_item_model.dart';

class SideNavigationItemWidget extends StatelessWidget {
  final SideNavigationItemModel item;
  final VoidCallback? onTap;

  const SideNavigationItemWidget({
    Key? key,
    required this.item,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 66.h,
      height: 64.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF363c41), Color(0xFF2b3035)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.h),
          bottomLeft: Radius.circular(8.h),
        ),
      ),
      child: Material(
        color: appTheme.transparentCustom,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.h),
            bottomLeft: Radius.circular(8.h),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: item.icon?.value ?? '',
                height: 36.h,
                width: 36.h,
              ),
              SizedBox(height: 4.h),
              Text(
                item.title?.value ?? '',
                style: TextStyleHelper.instance.body12Bold2
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
