import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class DomainLinkModel {
  Rx<String>? domainName;
  Rx<bool>? isActive;

  DomainLinkModel({
    this.domainName,
    this.isActive,
  });
}
