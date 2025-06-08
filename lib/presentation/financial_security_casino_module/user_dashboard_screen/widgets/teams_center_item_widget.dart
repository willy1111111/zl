import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/teams_center_item_model.dart';

class TeamsCenterItemWidget extends StatelessWidget {
  final TeamsCenterItemModel teamsCenterItemModel;

  TeamsCenterItemWidget({
    Key? key,
    required this.teamsCenterItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle team center item tap
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: teamsCenterItemModel.icon?.value ?? '',
            height: 26.h,
            width: 26.h,
          ),
          SizedBox(height: 8.h),
          Text(
            teamsCenterItemModel.title?.value ?? '',
            style: TextStyleHelper.instance.body12Bold2
                .copyWith(color: appTheme.colorFF8089, height: 1.2),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
