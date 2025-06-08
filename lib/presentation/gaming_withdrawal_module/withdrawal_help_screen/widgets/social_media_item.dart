import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/social_media_model.dart';

class SocialMediaItem extends StatelessWidget {
  final SocialMediaModel socialMedia;
  final VoidCallback? onTap;

  const SocialMediaItem({
    Key? key,
    required this.socialMedia,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 32.h,
            height: 32.h,
            decoration: (socialMedia.isRounded?.value ?? false)
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(16.h),
                  )
                : null,
            clipBehavior: (socialMedia.isRounded?.value ?? false)
                ? Clip.antiAlias
                : Clip.none,
            child: CustomImageView(
              imagePath: socialMedia.icon?.value ?? '',
              height: 32.h,
              width: 32.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            socialMedia.label?.value ?? '',
            style: TextStyleHelper.instance.body12Arial
                .copyWith(color: appTheme.colorFF8089, height: 1.17),
          ),
        ],
      ),
    );
  }
}
