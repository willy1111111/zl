import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [narad_gaming_hub_home_screen] screen with GetX.
class NaradGamingHubHomeModel {
  Rx<String> balance = '1980.00'.obs;
  Rx<int> selectedNavigationIndex = 0.obs;

  NaradGamingHubHomeModel();
}
