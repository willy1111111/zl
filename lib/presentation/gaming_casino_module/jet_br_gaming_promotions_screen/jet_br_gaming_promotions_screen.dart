import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import './controller/jet_br_gaming_promotions_controller.dart';
import './widgets/promotion_card_widget.dart';

class JetBrGamingPromotionsScreen extends StatelessWidget {
  JetBrGamingPromotionsScreen({Key? key}) : super(key: key);

  final JetBrGamingPromotionsController controller =
      Get.put(JetBrGamingPromotionsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.h),
        child: CustomAppBar(
          logoImage: ImageConstant.imgLogowj9311,
          balanceAmount: '₱1980.00',
          balanceIcon: ImageConstant.imgGroup736,
          actionIcon: ImageConstant.img1LightGreenA700,
          height: 86.h,
          backgroundColor: appTheme.colorFF1B1C,
          showStatusBar: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Column(
            children: [
              SizedBox(height: 16.h),
              Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.promotionCards.length,
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 67.h),
                    itemBuilder: (context, index) {
                      return PromotionCardWidget(
                        promotionCard: controller.promotionCards[index],
                        onMoreInfoTap: () => controller.onMoreInfoTap(index),
                      );
                    },
                  )),
              SizedBox(height: 67.h),
            ],
          ),
        ),
      ),
    );
  }
}
