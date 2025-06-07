import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../models/url_indicator_model.dart';

class UrlIndicatorWidget extends StatelessWidget {
  final UrlIndicatorModel urlModel;

  const UrlIndicatorWidget({
    Key? key,
    required this.urlModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215.h,
      height: 29.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF85D4,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14.h),
          bottomLeft: Radius.circular(14.h),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 9.h, right: 3.h),
            child: CustomImageView(
              imagePath: urlModel.iconPath?.value ?? '',
              width: 17.h,
              height: 17.h,
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: urlModel.backgroundImagePath?.value ?? '',
                  width: 191.h,
                  height: 29.h,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 9.h,
                  child: CustomImageView(
                    imagePath: urlModel.overlayImagePath?.value ?? '',
                    width: 176.h,
                    height: 29.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 7.h,
                  left: (urlModel.url?.value == 'JBET88.ph') ? 67.h : 68.h,
                  child: Text(
                    urlModel.url?.value ?? '',
                    style: TextStyleHelper.instance.body13BoldArial,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
