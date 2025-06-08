import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GamingAppShareModel {
  Rx<String>? userId;
  Rx<String>? inviteCode;
  Rx<String>? invitationLink;

  GamingAppShareModel({
    this.userId,
    this.inviteCode,
    this.invitationLink,
  });
}
