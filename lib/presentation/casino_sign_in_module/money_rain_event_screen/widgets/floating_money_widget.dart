import 'package:flutter/material.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../../../core/app_export.dart';
import '../models/floating_money_model.dart';

class FloatingMoneyWidget extends StatefulWidget {
  final FloatingMoneyModel floatingMoney;

  FloatingMoneyWidget({
    Key? key,
    required this.floatingMoney,
  }) : super(key: key);

  @override
  _FloatingMoneyWidgetState createState() => _FloatingMoneyWidgetState();
}

class _FloatingMoneyWidgetState extends State<FloatingMoneyWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _floatAnimation;
  late Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    )..repeat();

    _floatAnimation = Tween<double>(
      begin: 0,
      end: -10,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _rotateAnimation = Tween<double>(
      begin: 0,
      end: 0.087, // 5 degrees in radians
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.floatingMoney.top?.value.toDouble() ?? 0,
      left: widget.floatingMoney.left?.value.toDouble() ?? 0,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, _floatAnimation.value),
            child: Transform.rotate(
              angle: _rotateAnimation.value,
              child: CustomImageView(
                imagePath: widget.floatingMoney.imagePath?.value ??
                    '', // Modified: Use value property for Rx<String>
                width: widget.floatingMoney.width?.value.toDouble().h ?? 50.h,
                height: widget.floatingMoney.height?.value.toDouble().h ?? 50.h,
              ),
            ),
          );
        },
      ),
    );
  }
}
