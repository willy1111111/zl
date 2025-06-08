import 'package:get/get.dart';

import '../../../core/app_export.dart';

class LuckySpinInvitationGuideModel {
  Rx<String>? headerTitle;
  Rx<String>? headerSubtitle;
  Rx<String>? logoImage;
  Rx<String>? wheelBaseImage;
  Rx<String>? wheelFrameImage;
  Rx<String>? spinButtonImage;
  Rx<String>? prizeValue;
  Rx<String>? prizeLabel;

  LuckySpinInvitationGuideModel({
    this.headerTitle,
    this.headerSubtitle,
    this.logoImage,
    this.wheelBaseImage,
    this.wheelFrameImage,
    this.spinButtonImage,
    this.prizeValue,
    this.prizeLabel,
  });
}
