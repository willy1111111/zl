import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../core/app_export.dart';
import '../controller/rewards_achievements_controller.dart';

class AchievementItemWidget extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final VoidCallback? onTap;

  AchievementItemWidget({
    Key? key,
    required this.imagePath,
    required this.width,
    required this.height,
    this.onTap,
  }) : super(key: key);

  var controller = Get.find<RewardsAchievementsController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedBuilder(
        animation: controller.animationController,
        builder: (context, child) {
          return Transform.scale(
            scale: controller.isAnimating.value
                ? controller.bounceAnimation.value
                : 1.0,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                width: width,
                height: height,
                child: CustomImageView(
                  imagePath: imagePath,
                  width: width,
                  height: height,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
