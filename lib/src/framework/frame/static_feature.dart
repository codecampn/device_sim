import 'package:flutter/widgets.dart';

/// A feature that rotates with the device.
class StaticFeature extends StatelessWidget {
  /// Creates a new [StaticFeature].
  const StaticFeature(
      {Key? key, required this.child, required this.portraitAlignment})
      : super(key: key);

  /// The actual feature in portrait mode.
  final Widget child;

  /// Position of the feature in portrait mode.
  final Alignment portraitAlignment;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      var widget = child;
      var align = portraitAlignment;

      if (orientation == Orientation.landscape) {
        widget = RotatedBox(
          quarterTurns: 1,
          child: widget,
        );

        align = Alignment(align.y * -1, align.x);
      }

      return Align(
        alignment: align,
        child: widget,
      );
    });
  }
}
