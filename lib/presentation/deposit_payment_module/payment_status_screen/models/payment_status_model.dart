import '../../../core/app_export.dart';

/// This class is used in the [PaymentStatusScreen] screen with GetX.

class PaymentStatusModel {
  Rx<String>? depositAmount;
  Rx<String>? transactionDate;
  Rx<String>? paymentChannel;
  Rx<String>? paymentChannelDetail;
  Rx<String>? depositAccount;
  Rx<String>? depositAmountFormatted;

  PaymentStatusModel({
    this.depositAmount,
    this.transactionDate,
    this.paymentChannel,
    this.paymentChannelDetail,
    this.depositAccount,
    this.depositAmountFormatted,
  });
}
