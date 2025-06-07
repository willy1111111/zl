import '../../../../core/app_export.dart';

/// This class is used in the [SystemMaintenanceScreenTwo] screen with GetX.

class SystemMaintenanceScreenTwoModel {
  Rx<String> maintenanceTitle = "System maintenance notification".obs;
  Rx<String> maintenanceTime = "Maintenance time: 12/11/2023 03:00 ~ 04:00".obs;
  Rx<String> dearTeamsText = "Dear Teamss:".obs;
  Rx<String> maintenanceMessage =
      "In order to ensure the stability of the server, we will shut down the server for maintenance.\nDuring this period you will not be able to log in normally. We apologize for the inconvenience!"
          .obs;
  Rx<String> websiteName = "Jbet88.co".obs;
  Rx<String> loadingText = "Please wait..".obs;
  Rx<String> maintenanceIllustration = ImageConstant
      .imgB08e54516adf3b9b17a0d2e617b4da8810c857789c77golgq6fw1200.obs;
  Rx<String> maintenanceIcon =
      ImageConstant.img6fa1b410450091b3c4718be0b516971f921ab98515b32vaysx6.obs;
  Rx<String> backgroundImage = ImageConstant.img21.obs;
  Rx<String> backgroundOverlay = ImageConstant.img11.obs;

  SystemMaintenanceScreenTwoModel();
}
