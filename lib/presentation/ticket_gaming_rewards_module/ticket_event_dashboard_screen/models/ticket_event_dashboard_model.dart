import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [TicketEventDashboardScreen] screen with GetX.

class TicketEventDashboardModel {
  Rx<String>? profileImage;
  Rx<String>? userId;
  Rx<String>? totalTicketBonus;

  TicketEventDashboardModel({
    this.profileImage,
    this.userId,
    this.totalTicketBonus,
  }) {
    profileImage = profileImage ?? "assets/images/img_8713_1.png".obs;
    userId = userId ?? "939038393".obs;
    totalTicketBonus = totalTicketBonus ?? "₱ 123456789.00".obs;
  }
}
