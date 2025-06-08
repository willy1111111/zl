import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class SpinningWheelWidget extends StatefulWidget {
  final VoidCallback? onSpin;

  SpinningWheelWidget({
    Key? key,
    this.onSpin,
  }) : super(key: key);

  @override
  _SpinningWheelWidgetState createState() => _SpinningWheelWidgetState();
}

class _SpinningWheelWidgetState extends State<SpinningWheelWidget>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _spinWheel() {
    if (!_animationController.isAnimating) {
      _animationController.reset();
      _animationController.forward();
      widget.onSpin?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _spinWheel,
      child: Container(
        width: 301.h,
        height: 215.h,
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img1215x301,
              height: 215.h,
              width: 301.h,
            ),
            Positioned(
              top: -21.h,
              left: -58.h,
              child: RotationTransition(
                turns: _animation,
                child: CustomImageView(
                  imagePath: ImageConstant.img121,
                  height: 250.h,
                  width: 278.h,
                ),
              ),
            ),
            Positioned(
              top: -17.h,
              left: 65.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgZhizhen1,
                height: 99.h,
                width: 117.h,
              ),
            ),
            Positioned(
              top: 1.h,
              left: -179.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgYellow300,
                height: 211.h,
                width: 296.h,
              ),
            ),
            // Prize Values
            Positioned(
              top: 99.h,
              left: 21.h,
              child: Text(
                '₱？',
                style: TextStyleHelper.instance.body15Bold.copyWith(shadows: [
                  Shadow(
                    offset: Offset(0, 1.h),
                    color: appTheme.colorFF9634,
                  ),
                ]),
              ),
            ),
            Positioned(
              top: 34.h,
              left: 43.h,
              child: Text(
                '₱？',
                style: TextStyleHelper.instance.body15Bold.copyWith(shadows: [
                  Shadow(
                    offset: Offset(0, 1.h),
                    color: appTheme.colorFF9634,
                  ),
                ]),
              ),
            ),
            Positioned(
              top: 37.h,
              left: 175.h,
              child: Text(
                '₱？',
                style: TextStyleHelper.instance.body15Bold.copyWith(shadows: [
                  Shadow(
                    offset: Offset(0, 1.h),
                    color: appTheme.colorFF9634,
                  ),
                ]),
              ),
            ),
            Positioned(
              top: 191.h,
              left: 110.h,
              child: Text(
                '₱？',
                style: TextStyleHelper.instance.body15Bold.copyWith(shadows: [
                  Shadow(
                    offset: Offset(0, 1.h),
                    color: appTheme.colorFF9634,
                  ),
                ]),
              ),
            ),
            Positioned(
              top: 154.h,
              left: 45.h,
              child: Text(
                '₱88',
                style: TextStyleHelper.instance.body15Bold.copyWith(shadows: [
                  Shadow(
                    offset: Offset(0, 1.h),
                    color: appTheme.colorFF9634,
                  ),
                ]),
              ),
            ),
            Positioned(
              top: 159.h,
              left: 170.h,
              child: Text(
                '₱55',
                style: TextStyleHelper.instance.body15Bold.copyWith(shadows: [
                  Shadow(
                    offset: Offset(0, 1.h),
                    color: appTheme.colorFF9634,
                  ),
                ]),
              ),
            ),
            Positioned(
              top: 92.h,
              left: 200.h,
              child: Text(
                '₱55',
                style: TextStyleHelper.instance.body15Bold.copyWith(shadows: [
                  Shadow(
                    offset: Offset(0, 1.h),
                    color: appTheme.colorFF9634,
                  ),
                ]),
              ),
            ),
            // Prize Images
            Positioned(
              top: 89.h,
              left: 48.h,
              child: CustomImageView(
                imagePath: ImageConstant.img122,
                height: 40.h,
                width: 30.h,
              ),
            ),
            Positioned(
              top: 26.h,
              left: 108.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage452,
                height: 30.h,
                width: 30.h,
              ),
            ),
            Positioned(
              top: 92.h,
              left: 171.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgQweqweqwe1,
                height: 35.h,
                width: 29.h,
              ),
            ),
            Positioned(
              top: 48.h,
              left: 150.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage92136x40,
                height: 36.h,
                width: 40.h,
              ),
            ),
            Positioned(
              top: 137.h,
              left: 66.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage453,
                height: 30.h,
                width: 30.h,
              ),
            ),
            Positioned(
              top: 153.h,
              left: 102.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgZhu139x44,
                height: 39.h,
                width: 44.h,
              ),
            ),
            Positioned(
              top: 142.h,
              left: 151.h,
              child: CustomImageView(
                imagePath: ImageConstant.img52,
                height: 26.h,
                width: 40.h,
              ),
            ),
            Positioned(
              top: 57.h,
              left: 62.h,
              child: CustomImageView(
                imagePath: ImageConstant.img20240520113254125x30,
                height: 25.h,
                width: 30.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
