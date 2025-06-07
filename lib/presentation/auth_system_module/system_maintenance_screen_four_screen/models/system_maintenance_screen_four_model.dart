import '../../../../core/app_export.dart';

/// This class is used in the [SystemMaintenanceScreenFour] screen with GetX.

class SystemMaintenanceScreenFourModel {
  // Observable variables for reactive state management
  Rx<String> maintenanceTitle = "System maintenance notification".obs;
  Rx<String> maintenanceTime = "".obs;
  Rx<String> dearTeamsText = "Dear Teamss:".obs;
  Rx<String> maintenanceMessage1 =
      "In order to ensure the stability of the server, we will ".obs;
  Rx<String> maintenanceMessage2 =
      "shut down the server for maintenance.\nDuring this period you will not be able to log in normally. We apologize for the inconvenience!"
          .obs;
  Rx<String> websiteName = "".obs;
  Rx<String> loadingText = "".obs;
  Rx<String> backgroundImage1 = ImageConstant.img21.obs;
  Rx<String> backgroundImage2 = ImageConstant.img11.obs;
  Rx<String> maintenanceIllustration = ImageConstant
      .imgB08e54516adf3b9b17a0d2e617b4da8810c857789c77golgq6fw1200.obs;
  Rx<String> maintenanceIcon =
      ImageConstant.img6fa1b410450091b3c4718be0b516971f921ab98515b32vaysx6.obs;

  // Simple constructor with no parameters
  SystemMaintenanceScreenFourModel();
}
