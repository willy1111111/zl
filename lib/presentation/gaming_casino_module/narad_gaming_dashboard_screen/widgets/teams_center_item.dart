import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/teams_center_item_model.dart';

class TeamsCenterItem extends StatelessWidget {
  final TeamsCenterItemModel teamsCenterModel;
  final VoidCallback? onTap;

  TeamsCenterItem({
    Key? key,
    required this.teamsCenterModel,
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
            imagePath: teamsCenterModel.icon?.value ?? '',
            width: 26.h,
            height: 26.h,
          ),
          SizedBox(height: 8.h),
          Text(
            teamsCenterModel.title?.value ?? '',
            textAlign: TextAlign.center,
            style: TextStyleHelper.instance.body12Bold2.copyWith(height: 1.2),
          ),
        ],
      ),
    );
  }
}
