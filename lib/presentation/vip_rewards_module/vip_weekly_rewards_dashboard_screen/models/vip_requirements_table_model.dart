import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipRequirementsTableModel {
  RxList<VipLevelData> vipLevels = <VipLevelData>[
    VipLevelData(
      level: 1,
      depositAmount: '500',
      betAmount: '300',
      upgradeBonus: '500',
      weeklySalary: '300',
      monthlySalary: '300',
      birthdayBonus: '300',
    ),
    VipLevelData(
      level: 2,
      depositAmount: '800',
      betAmount: '800',
      upgradeBonus: '800',
      weeklySalary: '800',
      monthlySalary: '800',
      birthdayBonus: '800',
    ),
    VipLevelData(
      level: 3,
      depositAmount: '1000',
      betAmount: '1000',
      upgradeBonus: '1000',
      weeklySalary: '1000',
      monthlySalary: '1000',
      birthdayBonus: '1000',
    ),
    VipLevelData(
      level: 4,
      depositAmount: '1200',
      betAmount: '1200',
      upgradeBonus: '1200',
      weeklySalary: '1200',
      monthlySalary: '1200',
      birthdayBonus: '1200',
    ),
    VipLevelData(
      level: 5,
      depositAmount: '200',
      betAmount: '200',
      upgradeBonus: '200',
      weeklySalary: '200',
      monthlySalary: '200',
      birthdayBonus: '200',
    ),
  ].obs;

  VipRequirementsTableModel();
}

class VipLevelData {
  int level;
  String depositAmount;
  String betAmount;
  String upgradeBonus;
  String weeklySalary;
  String monthlySalary;
  String birthdayBonus;

  VipLevelData({
    required this.level,
    required this.depositAmount,
    required this.betAmount,
    required this.upgradeBonus,
    required this.weeklySalary,
    required this.monthlySalary,
    required this.birthdayBonus,
  });
}
