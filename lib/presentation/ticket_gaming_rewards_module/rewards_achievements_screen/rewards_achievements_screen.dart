import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import './controller/rewards_achievements_controller.dart';
import './widgets/achievement_item_widget.dart';

class RewardsAchievementsScreen
    extends GetWidget<RewardsAchievementsController> {
  RewardsAchievementsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteCustom,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // Trophy Image
            Positioned(
              left: 50.h,
              top: 408.h,
              child: AchievementItemWidget(
                imagePath: ImageConstant.imgTohlf1,
                width: 90.h,
                height: 97.h,
                onTap: () => controller.onAchievementTap(0),
              ),
            ),

            // Coins Stack Image
            Positioned(
              left: 95.h,
              top: 449.h,
              child: AchievementItemWidget(
                imagePath: ImageConstant.imgImage358,
                width: 106.h,
                height: 66.h,
                onTap: () => controller.onAchievementTap(1),
              ),
            ),

            // Additional Reward Item
            Positioned(
              left: 201.h,
              top: 454.h,
              child: AchievementItemWidget(
                imagePath: ImageConstant.imgImage9,
                width: 75.h,
                height: 72.h,
                onTap: () => controller.onAchievementTap(2),
              ),
            ),

            // Gift Box Image
            Positioned(
              left: 252.h,
              top: 457.h,
              child: AchievementItemWidget(
                imagePath: ImageConstant.imgImage359,
                width: 46.h,
                height: 49.h,
                onTap: () => controller.onAchievementTap(3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
