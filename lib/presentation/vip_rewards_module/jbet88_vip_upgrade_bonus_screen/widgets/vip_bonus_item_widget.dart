import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../controller/jbet88_vip_upgrade_bonus_controller.dart';
import '../models/vip_bonus_item_model.dart';

class VipBonusItemWidget extends StatelessWidget {
  final VipBonusItemModel vipBonusItem;

  VipBonusItemWidget({
    Key? key,
    required this.vipBonusItem,
  }) : super(key: key);

  var controller = Get.find<Jbet88VipUpgradeBonusController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          decoration: BoxDecoration(
            color: vipBonusItem.backgroundColor?.value ?? Color(0xFF34383e),
            borderRadius: BorderRadius.circular(8.h),
          ),
          padding: EdgeInsets.all(12.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: vipBonusItem.vipIcon?.value ?? '',
                height: 40.h,
                width: 40.h,
              ),
              SizedBox(width: 12.h),
              Text(
                'VIP',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
              SizedBox(width: 8.h),
              Text(
                vipBonusItem.vipLevel?.value ?? '',
                style: TextStyleHelper.instance.title16Bold
                    .copyWith(color: appTheme.colorFFFFEB),
              ),
              SizedBox(width: 16.h),
              Column(
                children: [
                  Text(
                    'Upgrade',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  Text(
                    'bonus',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ],
              ),
              SizedBox(width: 16.h),
              Text(
                vipBonusItem.bonusAmount?.value ?? '',
                style: TextStyleHelper.instance.title16Bold
                    .copyWith(color: appTheme.colorFFFFEB),
              ),
              Spacer(),
              _buildStatusWidget(),
            ],
          ),
        ));
  }

  Widget _buildStatusWidget() {
    return Obx(() {
      if (vipBonusItem.isReceived?.value ?? false) {
        return Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup1095,
              height: 16.h,
              width: 16.h,
            ),
            SizedBox(width: 8.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Received',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF8089),
                ),
                Text(
                  vipBonusItem.receivedDate?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF8089),
                ),
              ],
            ),
          ],
        );
      } else if (vipBonusItem.status?.value == 'Receive') {
        return CustomGradientButton(
          text: 'Receive',
          onTap: () => controller.onReceiveBonus(vipBonusItem),
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.h),
          fontSize: 14.fSize,
        );
      } else {
        return Text(
          vipBonusItem.status?.value ?? '',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF8089),
        );
      }
    });
  }
}
