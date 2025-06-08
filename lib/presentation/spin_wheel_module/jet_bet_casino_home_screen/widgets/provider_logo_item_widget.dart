import 'package:flutter/material.dart';
import '../../../widgets/custom_image_view.dart';

import '../../../core/app_export.dart';

import '../models/provider_logo_item_model.dart';

class ProviderLogoItemWidget extends StatelessWidget {
  final ProviderLogoItemModel providerLogo;

  ProviderLogoItemWidget({
    Key? key,
    required this.providerLogo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: providerLogo.logoPath?.value ?? '',
      height: 13.h,
      width: 62.h,
      fit: BoxFit.cover,
    );
  }
}
