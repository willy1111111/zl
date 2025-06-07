import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../controller/referral_rewards_controller.dart';
import '../models/domain_link_model.dart';

class DomainLinkWidget extends StatelessWidget {
  final DomainLinkModel domainLink;

  const DomainLinkWidget({
    Key? key,
    required this.domainLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ReferralRewardsController>();

    return GestureDetector(
      onTap: () =>
          controller.onDomainLinkTap(domainLink.domainName?.value ?? ''),
      child: Container(
        width: 215.h,
        height: 29.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF85D4,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14.h),
            bottomLeft: Radius.circular(14.h),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 5.h,
              left: 9.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrameWhiteA70017x17,
                height: 17.h,
                width: 17.h,
              ),
            ),
            Positioned(
              top: 0,
              left: 21.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgRectangle265,
                height: 29.h,
                width: 191.h,
              ),
            ),
            Positioned(
              top: 0,
              left: 30.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgRectangle266,
                height: 29.h,
                width: 176.h,
              ),
            ),
            Positioned(
              top: 7.h,
              left: 88.h,
              child: Text(
                domainLink.domainName?.value ?? '',
                style: TextStyleHelper.instance.body13Bold
                    .copyWith(color: appTheme.colorFFC0CD),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
