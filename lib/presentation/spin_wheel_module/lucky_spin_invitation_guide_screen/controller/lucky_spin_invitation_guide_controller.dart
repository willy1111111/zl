import '../../../core/app_export.dart';
import '../models/instruction_step_model.dart';
import '../models/lucky_spin_invitation_guide_model.dart';
import '../models/social_media_example_model.dart';

class LuckySpinInvitationGuideController extends GetxController {
  Rx<LuckySpinInvitationGuideModel> luckySpinInvitationGuideModel =
      LuckySpinInvitationGuideModel().obs;

  RxList<InstructionStepModel> instructionSteps = <InstructionStepModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeData();
  }

  void _initializeData() {
    luckySpinInvitationGuideModel.value = LuckySpinInvitationGuideModel();

    instructionSteps.value = [
      InstructionStepModel(
        stepNumber: '1'.obs,
        stepTitle: 'Download app'.obs,
        cardTitle: 'Download the app to participate in the event'.obs,
        mainImage: ImageConstant.imgImage1164.obs,
        decorationImageLeft: ImageConstant.imgRectangle34624870.obs,
        decorationImageRight: ImageConstant.imgRectangle34624871.obs,
        stepType: StepType.download.obs,
      ),
      InstructionStepModel(
        stepNumber: '2'.obs,
        stepTitle: 'Phone verification'.obs,
        cardTitle: 'Complete phone number verification'.obs,
        mainImage: ImageConstant.imgImage1164165x101.obs,
        secondaryImage: ImageConstant.imgImage5.obs,
        decorationImageLeft: ImageConstant.imgRectangle34624870.obs,
        decorationImageRight: ImageConstant.imgRectangle34624871.obs,
        stepType: StepType.verification.obs,
      ),
      InstructionStepModel(
        stepNumber: '3'.obs,
        stepTitle: 'Invite friends withdraw more quickly'.obs,
        cardTitle:
            'Tip:The more friends you invite, the faster you can withdraw money'
                .obs,
        decorationImageLeft: ImageConstant.imgRectangle34624870.obs,
        decorationImageRight: ImageConstant.imgRectangle34624871.obs,
        stepType: StepType.invite.obs,
        inviteSteps: [
          InviteStepModel(
            stepTitle: 'Step 1 :'.obs,
            description: 'Click the button:'.obs,
            buttonText: '【Invite Friends to Get Money】'.obs,
            stepImage: ImageConstant.imgImage1153.obs,
          ),
          InviteStepModel(
            stepTitle: 'Step 2 :'.obs,
            description:
                'In the sharing popup, click TG/FB/WhatsApp, to share it on your social app'
                    .obs,
            stepImage: ImageConstant.imgImage1154.obs,
          ),
        ].obs,
        socialMediaExamples: [
          SocialMediaExampleModel(
            platform: 'Telegram:'.obs,
            firstImage: ImageConstant.imgImage194x140.obs,
            secondImage: ImageConstant.imgImage6.obs,
            hasBorder: true.obs,
          ),
          SocialMediaExampleModel(
            platform: 'Facebook:'.obs,
            firstImage: ImageConstant.imgImage7.obs,
            secondImage: ImageConstant.imgImage8.obs,
            hasBorder: true.obs,
          ),
          SocialMediaExampleModel(
            platform: 'WhatsApp:'.obs,
            firstImage: ImageConstant.imgImage277x140.obs,
            secondImage: ImageConstant.imgImage9.obs,
            hasBorder: true.obs,
          ),
        ].obs,
        additionalImages: [
          ImageConstant.imgImage10.obs,
          ImageConstant.imgImage11.obs,
        ].obs,
      ),
      InstructionStepModel(
        stepNumber: '4'.obs,
        stepTitle: 'Check withdrawal progress'.obs,
        cardTitle:
            'The prompt below shows how much money is left to withdraw.When it reaches 100%,Click to withdraw cash and submit the review application'
                .obs,
        decorationImageLeft: ImageConstant.imgRectangle34624870.obs,
        decorationImageRight: ImageConstant.imgRectangle34624871.obs,
        stepType: StepType.progress.obs,
        progressImages: [
          ImageConstant.imgImage1158.obs,
          ImageConstant.imgImage1159.obs,
          ImageConstant.imgImage1160.obs,
        ].obs,
        footerText:
            'After the platform is approved, the amount will be credited to your account'
                .obs,
      ),
    ];
  }

  void onBackPressed() {
    Get.back();
  }

  void onRulePressed() {
    // Handle rule button action
  }
}
