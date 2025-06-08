import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/celebration_confetti_controller.dart';

class CelebrationConfettiScreen
    extends GetWidget<CelebrationConfettiController> {
  const CelebrationConfettiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteCustom,
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            _buildConfettiSection(),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildConfettiSection() {
    return Positioned(
      left: 0,
      top: 103.h,
      child: CustomImageView(
        imagePath: ImageConstant.img1403x375,
        height: 403.h,
        width: 375.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
