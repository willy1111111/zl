import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_edit_text.dart';
import './controller/add_bank_account_pix_controller.dart';
import './widgets/wallet_type_option_widget.dart';

class AddBankAccountPixScreen extends GetWidget<AddBankAccountPixController> {
  AddBankAccountPixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Add Bank Account',
        showBackButton: true,
        height: CustomAppBarHeight.standard,
        onBackPressed: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            _buildPayeeNameInput(),
            SizedBox(height: 24.h),
            _buildEWalletTypeSection(),
            SizedBox(height: 24.h),
            _buildPixKeyInput(),
            SizedBox(height: 24.h),
            _buildTransactionPasswordInput(),
            SizedBox(height: 8.h),
            _buildErrorMessage(),
            SizedBox(height: 24.h),
            _buildConfirmPasswordInput(),
            SizedBox(height: 32.h),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildPayeeNameInput() {
    return CustomEditText(
      controller: controller.payeeNameController,
      placeholder: 'Please enter the full name of the payee',
      leadingIcon: ImageConstant.imgVectorBlueGray400,
      trailingIcon: ImageConstant.imgGroup563,
      onChanged: (value) {
        controller.updatePayeeName(value);
      },
      onTrailingTap: () {
        controller.onEditPayeeName();
      },
    );
  }

  Widget _buildEWalletTypeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'E-wallet Type',
          style: TextStyleHelper.instance.title16Bold.copyWith(height: 1.2),
        ),
        SizedBox(height: 16.h),
        Obx(() => Wrap(
              spacing: 12.h,
              runSpacing: 12.h,
              children: controller.walletTypes.map((walletType) {
                int index = controller.walletTypes.indexOf(walletType);
                return WalletTypeOptionWidget(
                  walletType: walletType,
                  onTap: () {
                    controller.selectWalletType(index);
                  },
                );
              }).toList(),
            )),
      ],
    );
  }

  Widget _buildPixKeyInput() {
    return CustomEditText(
      controller: controller.pixKeyController,
      placeholder: 'Chave do PIX-CPF',
      leadingIcon: ImageConstant.img1BlueGray40017x17,
      onChanged: (value) {
        controller.updatePixKey(value);
      },
    );
  }

  Widget _buildTransactionPasswordInput() {
    return Obx(() => CustomEditText(
          controller: controller.transactionPasswordController,
          placeholder: 'Set transaction password',
          leadingIcon: ImageConstant.imgVectorBlueGray40017x14,
          trailingIcon: ImageConstant.img3,
          isPassword: !controller.isTransactionPasswordVisible.value,
          onChanged: (value) {
            controller.updateTransactionPassword(value);
          },
          onTrailingTap: () {
            controller.toggleTransactionPasswordVisibility();
          },
        ));
  }

  Widget _buildErrorMessage() {
    return Obx(() => Visibility(
          visible: controller.showPasswordError.value,
          child: Text(
            'Please set up your transaction password',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFFF652, height: 1.2),
          ),
        ));
  }

  Widget _buildConfirmPasswordInput() {
    return Obx(() => CustomEditText(
          controller: controller.confirmPasswordController,
          placeholder: 'Confirm password',
          leadingIcon: ImageConstant.imgVectorBlueGray40017x14,
          trailingIcon: ImageConstant.img4,
          isPassword: !controller.isConfirmPasswordVisible.value,
          onChanged: (value) {
            controller.updateConfirmPassword(value);
          },
          onTrailingTap: () {
            controller.toggleConfirmPasswordVisibility();
          },
        ));
  }

  Widget _buildSubmitButton() {
    return CustomButton(
      text: 'Submit',
      variant: CustomButtonVariant.gradient,
      width: double.infinity,
      onPressed: () {
        controller.onSubmitPressed();
      },
    );
  }
}
