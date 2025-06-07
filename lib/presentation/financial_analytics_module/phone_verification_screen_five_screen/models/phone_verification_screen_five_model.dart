import 'package:get/get.dart';
import '../../../core/app_export.dart';

class PhoneVerificationScreenFiveModel {
  Rx<String>? phoneNumber;
  Rx<String>? verificationCode;
  Rx<String>? phoneErrorMessage;
  Rx<String>? smsErrorMessage;
  Rx<String>? codeErrorMessage;
  Rx<bool>? showPhoneError;
  Rx<bool>? showSmsError;
  Rx<bool>? showCodeError;
  Rx<bool>? isLoading;
  Rx<bool>? isVerificationComplete;
  Rx<bool>? timerFinished;

  PhoneVerificationScreenFiveModel({
    this.phoneNumber,
    this.verificationCode,
    this.phoneErrorMessage,
    this.smsErrorMessage,
    this.codeErrorMessage,
    this.showPhoneError,
    this.showSmsError,
    this.showCodeError,
    this.isLoading,
    this.isVerificationComplete,
    this.timerFinished,
  }) {
    phoneNumber = phoneNumber ?? '1234567890'.obs;
    verificationCode = verificationCode ?? ''.obs;
    phoneErrorMessage = phoneErrorMessage ?? 'The mobile num is not yalid'.obs;
    smsErrorMessage =
        smsErrorMessage ?? 'Please enter a valid verification code'.obs;
    codeErrorMessage =
        codeErrorMessage ?? 'Please enter a valid verification code'.obs;
    showPhoneError = showPhoneError ?? true.obs;
    showSmsError = showSmsError ?? true.obs;
    showCodeError = showCodeError ?? true.obs;
    isLoading = isLoading ?? false.obs;
    isVerificationComplete = isVerificationComplete ?? false.obs;
    timerFinished = timerFinished ?? false.obs;
  }
}
