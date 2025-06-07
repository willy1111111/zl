import 'package:flutter/material.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../core/app_export.dart';
import '../models/social_media_model.dart';

class SocialMediaWidget extends StatelessWidget {
  final SocialMediaModel socialMedia;
  final VoidCallback? onTap;

  SocialMediaWidget({
    Key? key,
    required this.socialMedia,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 32.h,
        height: 32.h,
        decoration: BoxDecoration(
          borderRadius: socialMedia.name?.value == 'Twitter'
              ? BorderRadius.circular(16.h)
              : null,
        ),
        child: CustomImageView(
          imagePath: socialMedia.iconPath?.value ?? '',
          height: 32.h,
          width: 32.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
