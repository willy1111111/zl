import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/vip_upgrade_rewards_controller.dart';
import '../models/vip_bonus_item_model.dart';

class VipBonusItemWidget extends StatelessWidget {
  final VipBonusItemModel bonusItem;

  const VipBonusItemWidget({
    Key? key,
    required this.bonusItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<VipUpgradeRewardsController>();

    return Obx(() => Container(
          decoration: BoxDecoration(
            color: bonusItem.backgroundColor?.value ?? Color(0xFF34383E),
            borderRadius: BorderRadius.circular(8.h),
          ),
          padding: EdgeInsets.all(12.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: bonusItem.vipIcon?.value ?? '',
                height: 40.h,
                width: 40.h,
              ),
              SizedBox(width: 12.h),
              Row(
                children: [
                  Text(
                    'VIP',
                    style: TextStyleHelper.instance.body14Bold,
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    bonusItem.vipLevel?.value ?? '',
                    style: TextStyleHelper.instance.title16Bold.copyWith(
                        color: bonusItem.vipLevelColor?.value ??
                            Color(0xFFFFEB3B)),
                  ),
                ],
              ),
              SizedBox(width: 16.h),
              Column(
                children: [
                  Text(
                    'Upgrade',
                    style: TextStyleHelper.instance.body14Bold,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'bonus',
                    style: TextStyleHelper.instance.body14Bold,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(width: 16.h),
              Text(
                bonusItem.bonusAmount?.value ?? '',
                style: TextStyleHelper.instance.title16Bold.copyWith(
                    color:
                        bonusItem.bonusAmountColor?.value ?? Color(0xFFFFEB3B)),
              ),
              Spacer(),
              _buildStatusWidget(controller),
            ],
          ),
        ));
  }

  Widget _buildStatusWidget(VipUpgradeRewardsController controller) {
    if (bonusItem.isReceivable?.value ?? false) {
      return CustomButton(
        variant: CustomButtonVariant.text,
        text: 'Receive',
        backgroundColor: appTheme.colorFFFFC6,
        borderColor: appTheme.colorFFFFC6,
        textStyle: TextStyleHelper.instance.body14Bold,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.h),
        onTap: () => controller.onReceiveBonus(bonusItem),
      );
    } else if (bonusItem.isReceived?.value ?? false) {
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
          if (bonusItem.receivedDate?.value.isNotEmpty ?? false)
            Text(
              bonusItem.receivedDate?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
        ],
      );
    } else {
      return Text(
        bonusItem.status?.value ?? 'Undone',
        style: TextStyleHelper.instance.body14Bold
            .copyWith(color: appTheme.colorFF8089),
      );
    }
  }
}
