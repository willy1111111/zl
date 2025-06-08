import 'package:get/get.dart';

import '../../../core/app_export.dart';
import './social_media_example_model.dart';

enum StepType { download, verification, invite, progress }

class InstructionStepModel {
  Rx<String>? stepNumber;
  Rx<String>? stepTitle;
  Rx<String>? cardTitle;
  Rx<String>? mainImage;
  Rx<String>? secondaryImage;
  Rx<String>? decorationImageLeft;
  Rx<String>? decorationImageRight;
  Rx<StepType>? stepType;
  RxList<InviteStepModel>? inviteSteps;
  RxList<SocialMediaExampleModel>? socialMediaExamples;
  RxList<Rx<String>>? additionalImages;
  RxList<Rx<String>>? progressImages;
  Rx<String>? footerText;

  InstructionStepModel({
    this.stepNumber,
    this.stepTitle,
    this.cardTitle,
    this.mainImage,
    this.secondaryImage,
    this.decorationImageLeft,
    this.decorationImageRight,
    this.stepType,
    this.inviteSteps,
    this.socialMediaExamples,
    this.additionalImages,
    this.progressImages,
    this.footerText,
  });
}

class InviteStepModel {
  Rx<String>? stepTitle;
  Rx<String>? description;
  Rx<String>? buttonText;
  Rx<String>? stepImage;

  InviteStepModel({
    this.stepTitle,
    this.description,
    this.buttonText,
    this.stepImage,
  });
}

// Modified: Removed duplicate SocialMediaExampleModel class to resolve ambiguous import
