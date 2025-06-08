/// This class is used in the [RobotVerificationDialogScreen] screen with GetX.
/// It defines the data model for robot verification dialog functionality.
class RobotVerificationDialogModel {
  /// 验证码图片路径
  Rx<String>? captchaImagePath;
  
  /// 用户输入的验证码
  Rx<String>? userInputCaptcha;
  
  /// 正确的验证码
  Rx<String>? correctCaptcha;
  
  /// 是否正在加载验证码
  Rx<bool>? isLoadingCaptcha;
  
  /// 是否正在验证
  Rx<bool>? isVerifying;
  
  /// 验证尝试次数
  Rx<int>? attemptCount;
  
  /// 最大尝试次数
  Rx<int>? maxAttempts;
  
  /// 验证是否成功
  Rx<bool>? isVerificationSuccess;

  RobotVerificationDialogModel({
    this.captchaImagePath,
    this.userInputCaptcha,
    this.correctCaptcha,
    this.isLoadingCaptcha,
    this.isVerifying,
    this.attemptCount,
    this.maxAttempts,
    this.isVerificationSuccess,
  }) {
    captchaImagePath = captchaImagePath ?? ''.obs;
    userInputCaptcha = userInputCaptcha ?? ''.obs;
    correctCaptcha = correctCaptcha ?? ''.obs;
    isLoadingCaptcha = isLoadingCaptcha ?? false.obs;
    isVerifying = isVerifying ?? false.obs;
    attemptCount = attemptCount ?? 0.obs;
    maxAttempts = maxAttempts ?? 3.obs;
    isVerificationSuccess = isVerificationSuccess ?? false.obs;
  }

  RobotVerificationDialogModel.fromJson(Map<String, dynamic> json) {
    captchaImagePath = (json['captchaImagePath'] as String?)?.obs ?? ''.obs;
    userInputCaptcha = (json['userInputCaptcha'] as String?)?.obs ?? ''.obs;
    correctCaptcha = (json['correctCaptcha'] as String?)?.obs ?? ''.obs;
    isLoadingCaptcha = (json['isLoadingCaptcha'] as bool?)?.obs ?? false.obs;
    isVerifying = (json['isVerifying'] as bool?)?.obs ?? false.obs;
    attemptCount = (json['attemptCount'] as int?)?.obs ?? 0.obs;
    maxAttempts = (json['maxAttempts'] as int?)?.obs ?? 3.obs;
    isVerificationSuccess = (json['isVerificationSuccess'] as bool?)?.obs ?? false.obs;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['captchaImagePath'] = captchaImagePath?.value;
    data['userInputCaptcha'] = userInputCaptcha?.value;
    data['correctCaptcha'] = correctCaptcha?.value;
    data['isLoadingCaptcha'] = isLoadingCaptcha?.value;
    data['isVerifying'] = isVerifying?.value;
    data['attemptCount'] = attemptCount?.value;
    data['maxAttempts'] = maxAttempts?.value;
    data['isVerificationSuccess'] = isVerificationSuccess?.value;
    return data;
  }
}