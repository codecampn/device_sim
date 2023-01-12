import 'dart:math';

import 'package:flutter/widgets.dart';

typedef ZoomCallback = void Function(double factor);

class FittedArea extends StatelessWidget {
  const FittedArea({
    Key? key,
    required this.size,
    required this.onZoomChanged,
    required this.diagonalInInch, // shows iphone se in "real" size
    required this.child,
  }) : super(key: key);

  final Size size;
  final double diagonalInInch;
  final ZoomCallback onZoomChanged;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, layout) {
      var availableWidth = layout.maxWidth;
      var availableHeight = layout.maxHeight;

      var aspectRatio = size.width / size.height;
      var widthToUse = availableWidth;
      var heightToUse = widthToUse * (1 / aspectRatio);
      if (heightToUse > availableHeight) {
        heightToUse = availableHeight;
        widthToUse = heightToUse * aspectRatio;
      }

      var deviceArea = (aspectRatio / ( 1 + pow(aspectRatio, 2))) * pow(diagonalInInch, 2);

      var pixelsPerInch = 96;

      var virtualArea = (widthToUse / pixelsPerInch) * (heightToUse / pixelsPerInch);

      WidgetsBinding.instance.addPostFrameCallback((_){
        onZoomChanged(virtualArea / deviceArea);
      });

      return SizedBox(
        width: widthToUse,
        height: heightToUse,
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: MediaQuery(
                data: MediaQuery.of(context).copyWith(size: size),
                child: child),
          ),
        ),
      );
    });
  }
}