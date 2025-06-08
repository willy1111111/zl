import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_action_button.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/jeetbaji_gaming_home_controller.dart';
import './widgets/game_grid_item_widget.dart';
import './widgets/gaming_category_item_widget.dart';

class JeetbajiGamingHomeScreen extends StatelessWidget {
  JeetbajiGamingHomeScreen({Key? key}) : super(key: key);

  final JeetbajiGamingHomeController controller =
      Get.put(JeetbajiGamingHomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom,
      body: Stack(
        children: [
          // Background Image
          CustomImageView(
            imagePath: ImageConstant.imgImage455,
            height: 956.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          // Main Content
          Column(
            children: [
              // Custom App Bar
              CustomAppBar(
                showBrandLogo: true,
                brandName: 'JEETBAJI',
                brandLogoPath: ImageConstant.img1150x95,
                showBalance: true,
                balance: '1980.00',
                currencySymbol: 'R\$',
                showProfileAvatar: true,
                backgroundColor: appTheme.colorFF16A0,
                height: 64.h,
              ),

              // Action Buttons Section
              _buildActionButtonsSection(),

              // Download Promotion Banner
              _buildDownloadPromotionBanner(),

              // Jackpot Section
              _buildJackpotSection(),

              // Main Content Area
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gaming Categories Sidebar
                      _buildGamingCategoriesSidebar(),

                      SizedBox(width: 16.h),

                      // Games Grid
                      Expanded(
                        child: _buildGamesGrid(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Floating Action Button
          Positioned(
            bottom: 100.h,
            right: 16.h,
            child: GestureDetector(
              onTap: () => controller.onChatPressed(),
              child: Container(
                width: 56.h,
                height: 56.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF16A0,
                  borderRadius: BorderRadius.circular(28.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.blackCustom.withAlpha(77),
                      blurRadius: 8.h,
                      offset: Offset(0, 4.h),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    '💬',
                    style: TextStyleHelper.instance.title20,
                  ),
                ),
              ),
            ),
          ),

          // Small App Icon Overlay
          Positioned(
            top: 319.h,
            left: 279.h,
            child: CustomImageView(
              imagePath: ImageConstant.img1150x95,
              width: 95.h,
              height: 50.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtonsSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      child: Row(
        children: [
          Expanded(
            child: CustomActionButton(
              text: 'Withdrawal',
              backgroundColor: appTheme.colorFFFF70,
              onPressed: () => controller.onWithdrawalPressed(),
              height: 48.h,
              borderRadius: 8.h,
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: CustomActionButton(
              text: 'Deposit',
              backgroundColor: appTheme.colorFF16A0,
              iconPath: ImageConstant.imgVectorWhiteA700,
              onPressed: () => controller.onDepositPressed(),
              height: 48.h,
              borderRadius: 8.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDownloadPromotionBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF16A085), Color(0xFF4CAF50)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(12.h),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'DOWNLOAD',
                  style: TextStyleHelper.instance.body14Medium,
                ),
                Text(
                  'THE OFFICIAL APP',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.whiteCustom),
                ),
                Text(
                  'FOR A REWARD',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
          Text(
            '₹28',
            style: TextStyleHelper.instance.headline24Bold
                .copyWith(color: appTheme.colorFFFFC1),
          ),
          SizedBox(width: 12.h),
          Container(
            width: 64.h,
            height: 64.h,
            decoration: BoxDecoration(
              color: appTheme.whiteCustom,
              borderRadius: BorderRadius.circular(32.h),
            ),
            child: Center(
              child: Text(
                '🐼',
                style: TextStyleHelper.instance.headline32,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFFC107), Color(0xFFFF7043)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Row(
        children: [
          Row(
            children: [
              Text(
                '⭐',
                style: TextStyleHelper.instance.body14,
              ),
              SizedBox(width: 8.h),
              Text(
                'Collect',
                style: TextStyleHelper.instance.body14Medium,
              ),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  'JACKPOT',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.colorFFFFF5),
                ),
                Text(
                  '14,091,688.88',
                  style: TextStyleHelper.instance.title18Bold,
                ),
              ],
            ),
          ),
          Container(
            width: 48.h,
            height: 48.h,
            decoration: BoxDecoration(
              color: appTheme.colorFFE651,
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: Center(
              child: Text(
                '🎰',
                style: TextStyleHelper.instance.body12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGamingCategoriesSidebar() {
    return Obx(() => Column(
          children: List.generate(
            controller.gamingCategories.length,
            (index) => GamingCategoryItemWidget(
              category: controller.gamingCategories[index],
              isSelected: controller.selectedCategoryIndex.value == index,
              onTap: () => controller.onCategorySelected(index),
            ),
          ),
        ));
  }

  Widget _buildGamesGrid() {
    return Obx(() => GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.2,
            crossAxisSpacing: 12.h,
            mainAxisSpacing: 12.h,
          ),
          itemCount: controller.gameItems.length,
          itemBuilder: (context, index) {
            return GameGridItemWidget(
              gameItem: controller.gameItems[index],
              onTap: () => controller.onGameSelected(index),
            );
          },
        ));
  }
}
