import 'package:get/get.dart';
import '../../../core/app_export.dart';

class UserProfileSettingsModel {
  Rx<String>? userId;
  Rx<String>? uid;
  Rx<String>? phoneNumber;
  Rx<String>? email;

  UserProfileSettingsModel({
    this.userId,
    this.uid,
    this.phoneNumber,
    this.email,
  }) {
    userId = userId ?? '13345688800'.obs;
    uid = uid ?? 'Uid:6755399442622092'.obs;
    phoneNumber = phoneNumber ?? '+55 13045880888'.obs;
    email = email ?? '861719111@qq.com'.obs;
  }
}
