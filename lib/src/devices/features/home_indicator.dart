import 'package:flutter/material.dart';

/// Home indicator of iPhones.
class HomeIndicator extends StatelessWidget {
  /// Creates a new [HomeIndicator].
  const HomeIndicator(
      {Key? key, required this.widthInPortrait, required this.widthInLandscape})
      : super(key: key);

  /// Width of home indicator in portrait mode.
  final double widthInPortrait;

  /// Width of home indicator in landscape mode.
  final double widthInLandscape;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      var isLandscape = orientation == Orientation.landscape;
      var height = 5.0;
      var width = isLandscape ? widthInLandscape : widthInPortrait;
      var inset = EdgeInsets.only(bottom: isLandscape ? 9.0 : 8.0);

      return Container(
        height: height,
        width: width,
        margin: inset,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(2)),
      );
    });
  }
}
