import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class WheelPrizeWidget extends StatelessWidget {
  final String imagePath;
  final String prizeValue;
  final double imageWidth;
  final double imageHeight;

  WheelPrizeWidget({
    Key? key,
    required this.imagePath,
    required this.prizeValue,
    required this.imageWidth,
    required this.imageHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: imagePath,
          height: imageHeight,
          width: imageWidth,
        ),
        if (prizeValue.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: Text(
              prizeValue,
              style: TextStyleHelper.instance.body15Bold,
            ),
          ),
      ],
    );
  }
}
