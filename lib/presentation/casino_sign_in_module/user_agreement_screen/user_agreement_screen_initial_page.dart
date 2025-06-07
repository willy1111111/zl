import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/user_agreement_controller.dart';

// Modified: Fixed import path

class UserAgreementScreenInitialPage extends StatelessWidget {
  UserAgreementScreenInitialPage({Key? key}) : super(key: key);

  UserAgreementController controller = Get.put(
      UserAgreementController()); // Modified: Now refers to correct controller class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1A1C,
      appBar: CustomAppBar(
        logoPath: ImageConstant.imgLogowj931,
        showBackButton: false,
        showLoginButton: true,
        showRegisterButton: true,
        height: 44.h,
        onLoginPressed: () => controller.onLoginPressed(),
        onRegisterPressed: () => controller.onRegisterPressed(),
      ),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      _buildHeaderSection(),
                      SizedBox(height: 24.h),
                      _buildTermsOfServiceTitle(),
                      SizedBox(height: 24.h),
                      _buildAgreementText(),
                      SizedBox(height: 32.h),
                      _buildGrantOfLicenseSection(),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _buildScrollToTopButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame,
            height: 24.h,
            width: 24.h,
          ),
          SizedBox(width: 8.h),
          Text(
            'USER AGREEMENT',
            style: TextStyleHelper.instance.title16BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
          Spacer(),
          GestureDetector(
            onTap: () => controller.onClosePressed(),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup,
              height: 16.h,
              width: 16.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTermsOfServiceTitle() {
    return Container(
      width: double.maxFinite,
      child: Text(
        '【Terms of Service】',
        style: TextStyleHelper.instance.title16BoldArial
            .copyWith(color: appTheme.colorFFFFC6),
      ),
    );
  }

  Widget _buildAgreementText() {
    return Container(
      width: double.maxFinite,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'By registering and clicking "I Agree" on ',
              style: TextStyleHelper.instance.body15Arial.copyWith(height: 1.2),
            ),
            TextSpan(
              text:
                  'www.jbet88.co (the "Website"), you as the user ("You"; "Your"; "User"; "Player") consent to be bound by Our Terms of Service; Privacy Policy; Cookies Policy and other policy or rules applicable ("Terms") to the use of the Website. As such, You are hereby entering into a legally binding agreement with Us, and Your use and access of Our Website signifies you have read, understood and agreed to be bound by our Terms.',
              style: TextStyleHelper.instance.body15Arial
                  .copyWith(color: appTheme.colorFF85D4, height: 1.2),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGrantOfLicenseSection() {
    return Container(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '1. Grant of License',
            style: TextStyleHelper.instance.title16BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
          SizedBox(height: 16.h),
          Text(
            '''1.1. Subject to the terms and conditions contained herein, JBET88 grants the User a non-exclusive, personal, non-transferable right to use the Service on your personal computer or other device that accesses the Internet in order to access the games ava

1.2. The Service is not for use by (i) individuals under 18 years of age, (ii) individuals under the legal age of majority in their jurisdiction and (iii) individuals accessing the Service from jurisdictions from which it is illegal to do so. JBET88 is not able to verify the legality of the Service in each jurisdiction and it is the User's responsibility to ensure that their use of the Service is lawful.

1.3. JBET88 and its licensors are the sole holders of all rights in and to the Service and code, structure and organization, including copyright, trade secrets, intellectual property and other rights. You may not, within the limits prescribed by applicable laws: (a) copy, distribute, publish, reverse engineer, decompile, disassemble, modify, or translate the website; or (b) use the Service in a manner prohibited by applicable laws or regulations (each of the above is an "Unauthorized Use"). JBET88 reserves any and all rights implied or otherwise, which are not expressly granted to the User hereunder and retain all rights, title and interest in and to the Service. You agree that you will be solely liable for any damage, costs or expenses arising out of or in connection with the commission by you of any Unauthorized Use. You shall notify JBET88 immediately upon becoming aware of the commission by any person of any Unauthorized Use and shall provide JBET88 with reasonable assistance with any investigations it conducts in light of the information provided by you in this respect.

1.4. The term "JBET88", its domain names and any other trade marks, or service marks used by JBET88 as part of the Service (the "Trade Marks"), are solely owned by JBET88 In addition, all content on the website, including, but not limited to, the images, pictures, graphics, photographs, animations, videos, music, audio and text (the "Site Content") belongs to JBET88 and is protected by copyright and/or other intellectual property or other rights. You hereby acknowledge that by using the Service, you obtain no rights in the Site Content and/or the Trade Marks, or any part thereof. Under no circumstances may you use the Site Content and/or the Trade Marks without JBET88's prior written consent. Additionally, you agree not to do anything that will harm or potentially harm the rights, including the intellectual property rights of JBET88''',
            style: TextStyleHelper.instance.body15Arial.copyWith(height: 1.2),
          ),
        ],
      ),
    );
  }

  Widget _buildScrollToTopButton() {
    return GestureDetector(
      onTap: () => controller.scrollToTop(),
      child: Container(
        width: 50.h,
        height: 50.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(6.h),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVectorAmber300,
              height: 7.h,
              width: 12.h,
            ),
            SizedBox(height: 4.h),
            Text(
              'Top',
              style: TextStyleHelper.instance.body14Arial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ),
      ),
    );
  }
}
