import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/social_media_example_model.dart';

class SocialMediaExampleWidget extends StatelessWidget {
  final SocialMediaExampleModel socialMediaExample;

  SocialMediaExampleWidget({
    Key? key,
    required this.socialMediaExample,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFFF38C),
                appTheme.colorFFFFD6,
                Color(0xFFE66E00)
              ],
            ),
            borderRadius: BorderRadius.circular(9.h),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
          child: Text(
            socialMediaExample.platform?.value ?? '',
            style: TextStyleHelper.instance.label10Bold,
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            _buildImageContainer(
              socialMediaExample.firstImage?.value ?? '',
              socialMediaExample.hasBorder?.value ?? false,
            ),
            SizedBox(width: 8.h),
            _buildImageContainer(
              socialMediaExample.secondImage?.value ?? '',
              socialMediaExample.platform?.value == 'Facebook:',
            ),
          ],
        ),
        SizedBox(height: 16.h),
      ],
    );
  }

  Widget _buildImageContainer(String imagePath, bool hasBorder) {
    Widget imageWidget = CustomImageView(
      imagePath: imagePath,
      height: 140.h,
      width: 194.h,
      fit: BoxFit.cover,
    );

    if (hasBorder) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: appTheme.colorFF5E73, width: 2.h),
          borderRadius: BorderRadius.circular(10.h),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4.h),
              blurRadius: 8.h,
              color: Colors.black26,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.h),
          child: imageWidget,
        ),
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(10.h),
      child: imageWidget,
    );
  }
}
