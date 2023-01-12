import 'package:flutter/material.dart';

/// Notch of iPhone 13.
class IPhone13Notch extends StatelessWidget {

  /// Creates a new [IPhone13Notch].
  const IPhone13Notch({Key? key, this.width = 160.0, this.height = 34.0})
      : super(key: key);

  /// Width of the notch.
  final double width;

  /// Height of the notch.
  final double height;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(22),
              bottomRight: Radius.circular(22),
            )),
      );
    });
  }
}
