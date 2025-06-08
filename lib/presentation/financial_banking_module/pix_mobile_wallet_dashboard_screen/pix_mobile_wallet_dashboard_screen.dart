import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/pix_mobile_wallet_dashboard_controller.dart';
import './models/wallet_card_item_model.dart';
import './widgets/wallet_card_item_widget.dart';

class PixMobileWalletDashboardScreen
    extends GetWidget<PixMobileWalletDashboardController> {
  PixMobileWalletDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Wallet',
        showBalance: true,
        balanceAmount: '₱1980.00',
        height: CustomAppBarHeight.standard,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: CustomImageView(
              imagePath: ImageConstant.img1LightGreenA700,
              height: 14.h,
              width: 16.h,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 16.h,
        ),
        child: Column(
          children: [
            Expanded(
              child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 12.h);
                    },
                    itemCount: controller.walletCardsList.length,
                    itemBuilder: (context, index) {
                      WalletCardItemModel model =
                          controller.walletCardsList[index];
                      return WalletCardItemWidget(
                        model,
                        onTapCard: () {
                          controller.onTapWalletCard(model);
                        },
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
