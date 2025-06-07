import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/game_type_item_model.dart';

class GameTypeItemWidget extends StatelessWidget {
  final GameTypeItemModel gameTypeItemModel;

  GameTypeItemWidget({
    Key? key,
    required this.gameTypeItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF36383C), Color(0xFF25282D)],
        ),
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2.h),
            blurRadius: 2.h,
            color: appTheme.colorFF0000,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: gameTypeItemModel.iconPath?.value ?? '',
            width: 36.h,
            height: 36.h,
          ),
          SizedBox(height: 4.h),
          Text(
            gameTypeItemModel.title?.value ?? '',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFFF6D1),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
