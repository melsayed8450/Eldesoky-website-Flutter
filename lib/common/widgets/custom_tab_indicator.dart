import 'package:eldesoky_website/common/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MyTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _MyTabIndicatorPainter(this, onChanged);
  }
}

class _MyTabIndicatorPainter extends BoxPainter {
  _MyTabIndicatorPainter(this.decoration, VoidCallback? onChanged)
      : super(onChanged);

  final Decoration decoration;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect rect = offset & configuration.size!;
    final Paint paint = Paint();
    paint.color = AppColors.primaryColor;

    const double lineHeight = 2.8;
    const double lineGap = 6.0;
    final double line1Y = rect.bottom - lineHeight - lineGap;
    final double line1Width = rect.width * 0.35;

    canvas.drawRect(
      Rect.fromLTWH(rect.left + 17, line1Y, line1Width * 1.2, lineHeight),
      paint,
    );
    // canvas.drawRect(
    //   Rect.fromLTWH(rect.left, line2Y, line2Width, lineHeight),
    //   paint,
    // );
  }
}
