import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/social_share_model.dart';

class SocialIconWidget extends StatelessWidget {
  final SocialMediaModel socialMediaModel;
  final VoidCallback? onTap;

  SocialIconWidget({
    Key? key,
    required this.socialMediaModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 32.h,
            height: 32.h,
            margin: EdgeInsets.only(bottom: 4.h),
            child: CustomImageView(
              imagePath: socialMediaModel.iconPath?.value ?? '',
              width: 32.h,
              height: 32.h,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            socialMediaModel.label?.value ?? '',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
