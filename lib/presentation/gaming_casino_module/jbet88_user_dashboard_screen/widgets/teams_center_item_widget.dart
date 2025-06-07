import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/teams_center_item_model.dart';

class TeamsCenterItemWidget extends StatelessWidget {
  TeamsCenterItemWidget({
    Key? key,
    required this.teamsCenterItem,
  }) : super(key: key);

  final TeamsCenterItemModel teamsCenterItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: teamsCenterItem.icon?.value ?? '',
          height: 26.h,
          width: 26.h,
        ),
        SizedBox(height: 8.h),
        Text(
          teamsCenterItem.title?.value ?? '',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF8089),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
