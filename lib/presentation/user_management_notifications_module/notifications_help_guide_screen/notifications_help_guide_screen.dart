import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import './controller/notifications_help_guide_controller.dart';

class NotificationsHelpGuideScreen
    extends GetWidget<NotificationsHelpGuideController> {
  NotificationsHelpGuideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.h),
        child: CustomAppBar(
          title: 'Notifications',
          balance: '₱1980.00',
          showBalance: true,
          onBackPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.h),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(8.h),
            ),
            padding: EdgeInsets.all(15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildPasswordResetSection(),
                _buildDivider(),
                _buildWithdrawalPasswordSection(),
                _buildDivider(),
                _buildCashWithdrawalSection(),
                _buildDivider(),
                _buildDepositSection(),
                _buildDivider(),
                _buildBankCardManagementSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordResetSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Forgot your password? Follow these steps for a quick reset',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF85D4, height: 1.14),
        ),
        SizedBox(height: 13.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '1.Open the ',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Jbet88',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text: ' app or visit ',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'jbet88.co',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text: ' in your browser.\n2.Tap on "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Forgot Password',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '" on the login screen.\n3.Enter your correct phone number and click "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Send',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '".\n4.Input the PIN code and the new password received through SMS.\n5.Resetting your password is that simple! If you encounter any issues, feel free to reach out for assistance.',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.whiteCustom, height: 1.14),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildWithdrawalPasswordSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'To update your withdrawal password, follow these easy steps',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF85D4, height: 1.14),
        ),
        SizedBox(height: 13.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '1.Launch the ',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Jbet88',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text: ' app or visit ',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'jbet88.co',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    ' using your preferred browser.\n2.Log in to your account.\n3.Navigate to the "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Member',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '" section in the bottom menu to access the Member Center.\n4.Click on "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Setting',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text: '" and choose "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Security',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '.".\n5.Enter your current Fund Password, then set and confirm your new password to finalize the withdrawal password change.\n6.In case you forget your password, you can recover it through the "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Forgot Password',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '" option.\n7.Securing your account is essential, and updating your withdrawal password is a simple way to enhance your account\'s safety. If you encounter any difficulties, don\'t hesitate to contact us for assistance',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.whiteCustom, height: 1.14),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCashWithdrawalSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'To initiate a cash withdrawal, follow these streamlined steps',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF85D4, height: 1.14),
        ),
        SizedBox(height: 13.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '1.Launch the ',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Jbet88',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text: ' app or visit',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: ' jbet88.co',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    ' through your preferred browser.\n2.Sign in to your account.\n3.Click on "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Withdrawal',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '" at the top to access the withdrawal operation page.\n4.Choose the linked account from which you wish to withdraw funds.\n5.Input the withdrawal amount and your fund password, then click "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Submit',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '".\n6.Your account will be credited promptly after the completion of the system review.\n7.Experience seamless cash withdrawals by following these easy instructions. For any assistance or inquiries, feel free to reach out to us.',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.whiteCustom, height: 1.14),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDepositSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'To make a deposit seamlessly, follow these straightforward steps',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF85D4, height: 1.14),
        ),
        SizedBox(height: 13.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '1.Open the ',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Jbet88',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text: ' app or visit ',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'jbet88',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '.co through your preferred browser.\n2.Sign in to your account.\n3.Click on "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Deposit',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '" at the top to enter the deposit operation page.\n4.Select your preferred deposit method.\n5.Recharge a specific amount, and instantly receive a corresponding proportion of real money.\n6.This exclusive promotion is available for a limited time and is specially designed for new users.\n7.Click "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Confirm',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '" to submit your order, and your account will be promptly credited upon completing the payment steps.\n8.Enjoy a hassle-free deposit experience with these user-friendly instructions. For any assistance or queries, feel free to reach out to us.',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.whiteCustom, height: 1.14),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBankCardManagementSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'To manage your bank cards seamlessly, follow these user-friendly steps',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF85D4, height: 1.14),
        ),
        SizedBox(height: 13.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Add a Bank Card:',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '\n1.When initiating a withdrawal, it\'s essential to add a bank card for the security of your funds.\n2.Open the ',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Jbet88',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text: ' app or visit ',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'jbet88.co',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    ' through your preferred browser.\n3.Log in to your account.\n4.Navigate to "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Member',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '" in the bottom menu to access the Member Center.\n5.Click on "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Setting',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text: '" and choose "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Bank Account',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '.".\n6.Select the type of bank card you wish to add, input the full account name, accurate card number, and fund password.\n7.Click "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Submit',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text: '" to successfully add the bank card number.\n\n',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Delete a Bank Card:',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '\n1.Follow steps 1-5 to access the Bank Account section.\n2.Click the "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'edit',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '" button in the upper right corner of the account list.\n3.Select the card number you want to delete and click the red "',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089, height: 1.14),
              ),
              TextSpan(
                text: 'Clear',
                style:
                    TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
              ),
              TextSpan(
                text:
                    '" button to complete the process.\n4.Ensuring the safety of your transactions and providing a hassle-free experience is our priority. If you require any assistance, please don\'t hesitate to contact us.',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.whiteCustom, height: 1.14),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      width: double.infinity,
      height: 1.h,
      color: appTheme.colorFF282F,
      margin: EdgeInsets.symmetric(vertical: 24.h),
    );
  }
}
