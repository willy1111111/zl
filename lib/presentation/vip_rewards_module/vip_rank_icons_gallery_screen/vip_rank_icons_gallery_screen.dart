import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/vip_rank_icons_gallery_controller.dart';
import './models/vip_rank_icons_gallery_model.dart';

class VipRankIconsGalleryScreen
    extends GetWidget<VipRankIconsGalleryController> {
  VipRankIconsGalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1B1B,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            _buildLargeVipIcons(),
            _buildMediumVipIcons(),
            _buildSmallVipIcons(),
          ],
        ),
      ),
    );
  }

  Widget _buildLargeVipIcons() {
    return Obx(() => Positioned(
          top: 33.h,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildVipIcon(
                    controller.largeVipIcons[0],
                    125.h,
                    125.h,
                    0,
                  ),
                  _buildVipIcon(
                    controller.largeVipIcons[1],
                    125.h,
                    125.h,
                    1,
                  ),
                  _buildVipIcon(
                    controller.largeVipIcons[2],
                    125.h,
                    125.h,
                    2,
                  ),
                ],
              ),
              SizedBox(height: 11.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildVipIcon(
                    controller.largeVipIcons[3],
                    125.h,
                    125.h,
                    3,
                  ),
                  _buildVipIcon(
                    controller.largeVipIcons[4],
                    125.h,
                    125.h,
                    4,
                  ),
                  _buildVipIcon(
                    controller.largeVipIcons[5],
                    125.h,
                    125.h,
                    5,
                  ),
                ],
              ),
              SizedBox(height: 11.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildVipIcon(
                    controller.largeVipIcons[6],
                    125.h,
                    125.h,
                    6,
                  ),
                  _buildVipIcon(
                    controller.largeVipIcons[7],
                    125.h,
                    125.h,
                    7,
                  ),
                  _buildVipIcon(
                    controller.largeVipIcons[8],
                    125.h,
                    125.h,
                    8,
                  ),
                ],
              ),
              SizedBox(height: 11.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 50.h),
                  _buildVipIcon(
                    controller.largeVipIcons[9],
                    125.h,
                    125.h,
                    9,
                  ),
                  SizedBox(width: 42.h),
                  _buildVipIcon(
                    controller.largeVipIcons[10],
                    125.h,
                    125.h,
                    10,
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Widget _buildMediumVipIcons() {
    return Obx(() => Positioned(
          top: 699.h,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildVipIcon(
                    controller.mediumVipIcons[0],
                    42.h,
                    42.h,
                    0,
                  ),
                  _buildVipIcon(
                    controller.mediumVipIcons[1],
                    42.h,
                    42.h,
                    1,
                  ),
                  _buildVipIcon(
                    controller.mediumVipIcons[2],
                    42.h,
                    42.h,
                    2,
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildVipIcon(
                    controller.mediumVipIcons[3],
                    42.h,
                    42.h,
                    3,
                  ),
                  _buildVipIcon(
                    controller.mediumVipIcons[4],
                    42.h,
                    42.h,
                    4,
                  ),
                  _buildVipIcon(
                    controller.mediumVipIcons[5],
                    42.h,
                    42.h,
                    5,
                  ),
                ],
              ),
              SizedBox(height: 27.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildVipIcon(
                    controller.mediumVipIcons[6],
                    42.h,
                    42.h,
                    6,
                  ),
                  _buildVipIcon(
                    controller.mediumVipIcons[7],
                    42.h,
                    42.h,
                    7,
                  ),
                  _buildVipIcon(
                    controller.mediumVipIcons[8],
                    42.h,
                    42.h,
                    8,
                  ),
                ],
              ),
              SizedBox(height: 27.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildVipIcon(
                    controller.mediumVipIcons[9],
                    42.h,
                    42.h,
                    9,
                  ),
                  _buildVipIcon(
                    controller.mediumVipIcons[10],
                    42.h,
                    42.h,
                    10,
                  ),
                  SizedBox(width: 42.h),
                ],
              ),
            ],
          ),
        ));
  }

  Widget _buildSmallVipIcons() {
    return Obx(() => Positioned(
          top: 1039.h,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 80.h),
                  _buildVipIcon(
                    controller.smallVipIcons[0],
                    16.h,
                    16.h,
                    0,
                  ),
                  SizedBox(width: 16.h),
                  _buildVipIcon(
                    controller.smallVipIcons[1],
                    16.h,
                    16.h,
                    1,
                  ),
                  SizedBox(width: 16.h),
                  _buildVipIcon(
                    controller.smallVipIcons[2],
                    16.h,
                    16.h,
                    2,
                  ),
                ],
              ),
              SizedBox(height: 11.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 80.h),
                  _buildVipIcon(
                    controller.smallVipIcons[3],
                    16.h,
                    16.h,
                    3,
                  ),
                  SizedBox(width: 16.h),
                  _buildVipIcon(
                    controller.smallVipIcons[4],
                    16.h,
                    16.h,
                    4,
                  ),
                  SizedBox(width: 16.h),
                  _buildVipIcon(
                    controller.smallVipIcons[5],
                    16.h,
                    16.h,
                    5,
                  ),
                ],
              ),
              SizedBox(height: 11.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 80.h),
                  _buildVipIcon(
                    controller.smallVipIcons[6],
                    16.h,
                    16.h,
                    6,
                  ),
                  SizedBox(width: 16.h),
                  _buildVipIcon(
                    controller.smallVipIcons[7],
                    16.h,
                    16.h,
                    7,
                  ),
                  SizedBox(width: 16.h),
                  _buildVipIcon(
                    controller.smallVipIcons[8],
                    16.h,
                    16.h,
                    8,
                  ),
                ],
              ),
              SizedBox(height: 11.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 80.h),
                  _buildVipIcon(
                    controller.smallVipIcons[9],
                    16.h,
                    16.h,
                    9,
                  ),
                  SizedBox(width: 16.h),
                  _buildVipIcon(
                    controller.smallVipIcons[10],
                    16.h,
                    16.h,
                    10,
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Widget _buildVipIcon(
      VipRankIconModel icon, double width, double height, int index) {
    return GestureDetector(
      onTap: () => controller.onVipRankSelected(index, icon),
      child: AnimatedScale(
        scale: (controller.selectedRankIndex.value == index) ? 0.95 : 1.0,
        duration: Duration(milliseconds: 100),
        child: CustomImageView(
          imagePath: icon.imagePath?.value ?? '',
          width: width,
          height: height,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
