import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_timer_box.dart';
import '../../../widgets/custom_winner_list.dart';
import '../models/golden_egg_ticket_collection_model.dart';
import './golden_egg_widget.dart';

class EventOverlayWidget extends StatelessWidget {
  final VoidCallback? onClosePressed;
  final VoidCallback? onClaimPressed;

  EventOverlayWidget({
    Key? key,
    this.onClosePressed,
    this.onClaimPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: appTheme.blackCustom.withAlpha(191),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img1403x375,
            height: 403.h,
            width: 375.h,
            fit: BoxFit.cover,
            margin: EdgeInsets.only(top: 103.h),
          ),
          _buildNavigationArrows(),
          _buildEventHeader(),
          _buildEventContent(),
          _buildCloseButton(),
        ],
      ),
    );
  }

  Widget _buildNavigationArrows() {
    return Stack(
      children: [
        Positioned(
          top: 153.h,
          left: 6.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgUnion,
            height: 28.h,
            width: 28.h,
          ),
        ),
        Positioned(
          top: 153.h,
          right: 7.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgUnion28x28,
            height: 28.h,
            width: 28.h,
          ),
        ),
      ],
    );
  }

  Widget _buildEventHeader() {
    return Container(
      margin: EdgeInsets.only(top: 15.h),
      child: Column(
        children: [
          Center(
            child: CustomImageView(
              imagePath: ImageConstant.imgImage360,
              height: 78.h,
              width: 136.h,
            ),
          ),
          SizedBox(height: 48.h),
          Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage23,
                height: 70.h,
                width: 306.h,
              ),
              Positioned(
                top: 4.h,
                left: 74.h,
                child: Text(
                  'TICKET EVENT',
                  style: TextStyleHelper.instance.headline26LilitaOne,
                ),
              ),
              Positioned(
                top: 2.h,
                left: 74.h,
                child: ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [Color(0xFFFFFBDB), Color(0xFFFFC82F)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(bounds),
                  child: Text(
                    'TICKET EVENT',
                    style: TextStyleHelper.instance.headline26LilitaOne
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEventContent() {
    return Container(
      margin: EdgeInsets.only(top: 139.h),
      child: Column(
        children: [
          _buildRewardCards(),
          SizedBox(height: 61.h),
          _buildBonusText(),
          SizedBox(height: 31.h),
          _buildCountdownTimer(),
          SizedBox(height: 46.h),
          _buildGoldenEggsGrid(),
          SizedBox(height: 54.h),
          _buildProgressSection(),
          SizedBox(height: 27.h),
          _buildClaimButton(),
          SizedBox(height: 35.h),
          _buildWinnersSection(),
        ],
      ),
    );
  }

  Widget _buildRewardCards() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCashVoucherCard(),
          _buildGoldenEggCard(),
          _buildLuckyWheelCard(),
        ],
      ),
    );
  }

  Widget _buildCashVoucherCard() {
    return Container(
      width: 90.h,
      height: 54.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0x00EC3232), Color(0xFFFFBA48)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -15.h,
            left: 13.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgCash1,
              height: 50.h,
              width: 61.h,
            ),
          ),
          Positioned(
            bottom: 22.h,
            left: 5.h,
            child: Text(
              'Cash Voucher',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.colorFF5A27),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGoldenEggCard() {
    return Container(
      width: 110.h,
      height: 70.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0x006F1EE4), Color(0xFFA666F8)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(color: appTheme.colorFFFFFB, width: 2.h),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -10.h,
            left: 24.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage378,
              height: 55.h,
              width: 60.h,
            ),
          ),
          Positioned(
            bottom: 8.h,
            left: 16.h,
            child: Text(
              'Golden Egg',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLuckyWheelCard() {
    return Container(
      width: 90.h,
      height: 58.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMaskGroup,
            height: 58.h,
            width: 90.h,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 15.h,
            left: 8.h,
            child: Text(
              'Lucky Wheel',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.colorFF7310),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBonusText() {
    return Center(
      child: ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
          colors: [Color(0xFFFFF39A), Color(0xFFFFC931)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(bounds),
        child: Text(
          'APP download bonus – ₱38',
          style: TextStyleHelper.instance.title16BlackArial,
        ),
      ),
    );
  }

  Widget _buildCountdownTimer() {
    return Center(
      child: Column(
        children: [
          Text(
            'Remaining time',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTimerBox(value: '02', unit: 'Day'),
              SizedBox(width: 6.h),
              Text(
                ':',
                style: TextStyleHelper.instance.title18BlackArial,
              ),
              SizedBox(width: 6.h),
              CustomTimerBox(value: '01', unit: 'hr', useBottomPosition: true),
              SizedBox(width: 6.h),
              Text(
                ':',
                style: TextStyleHelper.instance.title18BlackArial,
              ),
              SizedBox(width: 6.h),
              CustomTimerBox(value: '21', unit: 'min'),
              SizedBox(width: 6.h),
              Text(
                ':',
                style: TextStyleHelper.instance.title18BlackArial,
              ),
              SizedBox(width: 6.h),
              CustomTimerBox(value: '06', unit: 'sec'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGoldenEggsGrid() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 71.h),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 18.h,
          mainAxisSpacing: 10.h,
          childAspectRatio: 1,
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
          return GoldenEggWidget(
            goldenEgg: GoldenEggModel(
              baseImage: ImageConstant.imgF2140x140.obs,
              eggImage: ImageConstant.imgF1123x123.obs,
              contentImage: ImageConstant.imgImage380.obs,
              isCollected: false.obs,
            ),
            onTap: () {},
          );
        },
      ),
    );
  }

  Widget _buildProgressSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 47.h),
      child: Column(
        children: [
          Container(
            width: 280.h,
            height: 12.h,
            decoration: BoxDecoration(
              color: appTheme.color999FB0,
              borderRadius: BorderRadius.circular(6.h),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 35.h,
                height: 12.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFFFF80E), Color(0xFFFF7A00)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(6.h),
                ),
              ),
            ),
          ),
          SizedBox(height: 3.h),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: Text(
                '10.00%',
                style: TextStyleHelper.instance.body12BoldArial
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClaimButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 43.h),
      child: CustomButton(
        text: 'Claim',
        width: 290.h,
        height: 40.h,
        gradientColors: [Color(0xFFFFCC18), Color(0xFFF55800)],
        borderRadius: 20.h,
        onPressed: onClaimPressed,
      ),
    );
  }

  Widget _buildWinnersSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: CustomWinnerList(
        winnerItems: [
          CustomWinnerItem(
            avatarPath: ImageConstant.imgEllipse539,
            username: '123***123',
            bonusAmount: '₱ 1,000,000,000.00',
          ),
          CustomWinnerItem(
            avatarPath: ImageConstant.imgEllipse53920x20,
            username: '123***123',
            bonusAmount: '₱ 1,000,000,000.00',
          ),
          CustomWinnerItem(
            avatarPath: ImageConstant.imgEllipse5391,
            username: '124***123',
            bonusAmount: '₱ 1,000,000,000.00',
          ),
        ],
      ),
    );
  }

  Widget _buildCloseButton() {
    return Positioned(
      top: 21.h,
      right: 26.h,
      child: GestureDetector(
        onTap: onClosePressed,
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup,
          height: 32.h,
          width: 32.h,
        ),
      ),
    );
  }
}
