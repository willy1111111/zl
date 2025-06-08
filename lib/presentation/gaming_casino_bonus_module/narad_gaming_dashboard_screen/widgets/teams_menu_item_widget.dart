import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/teams_menu_item_model.dart';

class TeamsMenuItemWidget extends StatelessWidget {
  final TeamsMenuItemModel teamsMenuItem;
  final VoidCallback? onTap;

  TeamsMenuItemWidget({
    Key? key,
    required this.teamsMenuItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: teamsMenuItem.icon?.value ?? '',
            height: 26.h,
            width: 26.h,
          ),
          SizedBox(height: 8.h),
          Text(
            teamsMenuItem.title?.value ?? '',
            textAlign: TextAlign.center,
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089, height: 1.2),
          ),
        ],
      ),
    );
  }
}
