import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [VipMonthlySalaryDetailsScreen] screen with GetX.

class VipMonthlySalaryDetailsModel {
  Rx<String> title = 'VIP Monthly Salary'.obs;
  Rx<String> amount = '₱19800.00'.obs;
  Rx<String> infoTitle = 'What is \'Monthly Salary \'?'.obs;
  Rx<String> infoDescription =
      'You can receive the monthly salary corresponding to yourcurrent VlP level at the designated times every month.'
          .obs;
  Rx<String> timeLimitLabel = 'Collection time limit:'.obs;
  Rx<String> timeLimitText =
      ' Please claim this month\'s rewardswithin 3 days, otherwise they will be invalid.'
          .obs;
  Rx<String> collectionTimeLabel = 'Monthly collection time: '.obs;
  Rx<String> collectionTimeText = '7th of every month 01:58'.obs;
  Rx<String> tableHeaderTitle = 'Reward details'.obs;
  Rx<String> disclaimerText =
      '※Complete the corresponding monthly betting and deposit reguirements to get the monthly bonus'
          .obs;

  VipMonthlySalaryDetailsModel();
}
