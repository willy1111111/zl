import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class TeamMemberWidget extends StatelessWidget {
  final String imagePath;
  final String label;
  final double imageWidth;
  final double imageHeight;
  final double labelContainerWidth;
  final double labelContainerHeight;
  final List<Color> gradientColors;
  final Color labelTextColor;
  final double fontSize;
  final double topPosition;
  final double leftPosition;

  TeamMemberWidget({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.imageWidth,
    required this.imageHeight,
    required this.labelContainerWidth,
    required this.labelContainerHeight,
    required this.gradientColors,
    required this.labelTextColor,
    required this.fontSize,
    required this.topPosition,
    required this.leftPosition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: imageWidth,
      height: imageHeight,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: imagePath,
            width: imageWidth,
            height: imageHeight,
            fit: BoxFit.contain,
          ),
          Positioned(
            top: topPosition,
            left: leftPosition,
            child: Container(
              width: labelContainerWidth,
              height: labelContainerHeight,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.37, -0.93),
                  end: Alignment(0.37, 0.93),
                  colors: gradientColors,
                ),
                borderRadius: BorderRadius.circular(labelContainerWidth / 2),
              ),
              child: Center(
                child: ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: label == 'YOU'
                        ? [Color(0xFFEBEDFF), Color(0xFF4755EE)]
                        : label.startsWith('A')
                            ? [Color(0xFFFFF8C4), Color(0xFF973722)]
                            : [Color(0xFFEED4BF), Color(0xFFDDA67F)],
                  ).createShader(bounds),
                  child: Text(
                    label,
                    style: TextStyleHelper.instance.bodyTextBold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
