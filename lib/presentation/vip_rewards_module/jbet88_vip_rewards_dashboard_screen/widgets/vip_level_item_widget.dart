import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../controller/jbet88_vip_rewards_dashboard_controller.dart';
import '../models/vip_level_item_model.dart';

class VipLevelItemWidget extends StatelessWidget {
  final VipLevelItemModel vipLevelItem;

  VipLevelItemWidget({
    Key? key,
    required this.vipLevelItem,
  }) : super(key: key);

  var controller = Get.find<Jbet88VipRewardsDashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        color: vipLevelItem.backgroundColor?.value ?? Color(0xFF34383e),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: vipLevelItem.iconPath?.value ?? '',
            height: 40.h,
            width: 40.h,
          ),
          SizedBox(width: 12.h),
          Row(
            children: [
              Text(
                'VIP',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
              SizedBox(width: 8.h),
              Text(
                vipLevelItem.vipLevel?.value ?? '',
                style: TextStyleHelper.instance.title16Bold.copyWith(
                    color: vipLevelItem.levelColor?.value ?? Color(0xFFffeb3b)),
              ),
            ],
          ),
          SizedBox(width: 16.h),
          Column(
            children: [
              Text(
                'Upgrade',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
              Text(
                'bonus',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          SizedBox(width: 16.h),
          Text(
            vipLevelItem.bonusAmount?.value ?? '',
            style: TextStyleHelper.instance.title16Bold.copyWith(
                color: vipLevelItem.bonusColor?.value ?? Color(0xFFffeb3b)),
          ),
          Spacer(),
          _buildActionWidget(),
        ],
      ),
    );
  }

  Widget _buildActionWidget() {
    if (vipLevelItem.isReceived?.value ?? false) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1095,
                height: 16.h,
                width: 16.h,
              ),
              SizedBox(width: 8.h),
              Text(
                'Received',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Text(
            vipLevelItem.receivedDate?.value ?? '',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
        ],
      );
    } else if (vipLevelItem.isAvailable?.value ?? false) {
      return CustomGradientButton(
        text: 'Receive',
        onTap: () => controller.onReceiveReward(vipLevelItem),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
        fontSize: 14.fSize,
        fontWeight: FontWeight.bold,
      );
    } else {
      return Text(
        'Undone',
        style: TextStyleHelper.instance.body14Bold
            .copyWith(color: appTheme.colorFF8089),
      );
    }
  }
}
