import 'package:flutter/material.dart';
import '../frame/frame_configuration.dart';

class Frame extends StatelessWidget {
  const Frame({Key? key, required this.frameConfiguration, required this.child})
      : super(key: key);

  final FrameConfiguration frameConfiguration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: frameConfiguration.outerRadius,
        child: OrientationBuilder(builder: (context, orientation) {
          return Container(
              color: Colors.black,
              padding: orientation == Orientation.landscape
                  ? EdgeInsets.fromLTRB(
                      frameConfiguration.frameInsets.bottom,
                      frameConfiguration.frameInsets.left,
                      frameConfiguration.frameInsets.top,
                      frameConfiguration.frameInsets.right)
                  : frameConfiguration.frameInsets,
              child: ClipRRect(
                  borderRadius: frameConfiguration.innerRadius,
                  child: Stack(
                    fit: StackFit.passthrough,
                    children: [
                      child,
                      ...frameConfiguration.features,
                    ],
                  )));
        }),
      ),
    );
  }
}
