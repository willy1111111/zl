import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/registration_success_controller.dart';
import '../models/bonus_card_model.dart';
import './countdown_timer_widget.dart';

class BonusCardWidget extends StatelessWidget {
  final BonusCardModel? bonusCard;

  BonusCardWidget({Key? key, this.bonusCard}) : super(key: key);

  var controller = Get.find<RegistrationSuccessController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.h,
      height: bonusCard?.height?.value ?? 149.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF2B2B2B), Color(0xFF353535)],
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Container(
        margin: EdgeInsets.all(1.h),
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(7.h),
        ),
        padding: EdgeInsets.all(12.h),
        child: Stack(
          children: [
            _buildCardNumber(),
            if (bonusCard?.hasTimer?.value ?? false) _buildTimerSection(),
            if (!(bonusCard?.hasTimer?.value ?? false)) _buildContentSection(),
            if (bonusCard?.buttonText?.value.isNotEmpty ?? false)
              _buildActionButton(),
            if (bonusCard?.hasIcon?.value ?? false) _buildIcon(),
          ],
        ),
      ),
    );
  }

  Widget _buildCardNumber() {
    return Positioned(
      top: (bonusCard?.hasTimer?.value ?? false)
          ? 22.h
          : (bonusCard?.height?.value == 66)
              ? 8.h
              : 15.h,
      left: 0,
      child: Text(
        '${bonusCard?.cardNumber?.value ?? ''}.',
        style: TextStyleHelper.instance.title18BoldArial,
      ),
    );
  }

  Widget _buildTimerSection() {
    return Positioned(
      top: 18.h,
      left: 24.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CountdownTimerWidget(),
          SizedBox(height: 13.h),
          SizedBox(
            width: 294.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Deposit within two hours and enjoy up ',
                    style: TextStyleHelper.instance.title16BoldArial
                        .copyWith(color: appTheme.colorFFFFFF),
                  ),
                  TextSpan(
                    text: 'to ₱900 free bonus',
                    style: TextStyleHelper.instance.title16BoldArial
                        .copyWith(color: appTheme.colorFF85D4),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContentSection() {
    return Positioned(
      top: (bonusCard?.height?.value == 66) ? 10.h : 10.h,
      left: 24.h,
      child: Text(
        bonusCard?.title?.value ?? '',
        style: TextStyleHelper.instance.title16BoldArial
            .copyWith(color: appTheme.colorFFFFFF),
      ),
    );
  }

  Widget _buildActionButton() {
    return Positioned(
      top: (bonusCard?.hasTimer?.value ?? false) ? 16.h : 10.h,
      right: 12.h,
      child: GestureDetector(
        onTap: () => _onButtonPressed(),
        child: Container(
          width: 110.h,
          height: 36.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF76CD00), Color(0xFF478A03)],
            ),
            borderRadius: BorderRadius.circular(18.h),
          ),
          child: Center(
            child: Text(
              bonusCard?.buttonText?.value ?? '',
              style: TextStyleHelper.instance.title16BoldArial.copyWith(
                  color: appTheme.colorFFFFFF,
                  fontSize: (bonusCard?.buttonText?.value == 'INSTALL')
                      ? 12.0
                      : null), // Modified: Fixed boolean to double conversion
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIcon() {
    return Positioned(
      top: 6.h,
      right: 30.h,
      child: GestureDetector(
        onTap: () => controller.onAddToHomeScreen(),
        child: CustomImageView(
          imagePath: bonusCard?.iconPath?.value ?? '',
          height: 28.h,
          width: 30.h,
        ),
      ),
    );
  }

  void _onButtonPressed() {
    if (bonusCard?.buttonText?.value.toLowerCase() == 'deposit') {
      controller.onDepositPressed();
    } else if (bonusCard?.buttonText?.value.toLowerCase() == 'install') {
      controller.onInstallPressed();
    }
  }
}
