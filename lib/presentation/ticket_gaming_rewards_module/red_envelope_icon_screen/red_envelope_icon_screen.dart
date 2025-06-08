import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/red_envelope_icon_controller.dart';

class RedEnvelopeIconScreen extends GetWidget<RedEnvelopeIconController> {
  RedEnvelopeIconScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFFF9FA,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Container(
            width: 322.h,
            height: 224.h,
            child: Stack(
              children: [
                Positioned(
                  left: 102.h,
                  top: 34.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img2134x102,
                    width: 102.h,
                    height: 134.h,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
