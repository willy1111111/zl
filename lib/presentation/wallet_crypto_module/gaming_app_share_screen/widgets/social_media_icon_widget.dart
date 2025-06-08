import 'package:flutter/material.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../core/app_export.dart';
import '../models/social_media_model.dart';

class SocialMediaIconWidget extends StatelessWidget {
  final SocialMediaModel socialMediaModel;
  final VoidCallback? onTap;

  SocialMediaIconWidget({
    Key? key,
    required this.socialMediaModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomImageView(
        imagePath: socialMediaModel.iconPath?.value ?? '',
        width: 32.h,
        height: 32.h,
      ),
    );
  }
}
