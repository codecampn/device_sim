import 'package:device_sim/device_sim.dart';
import 'package:flutter/material.dart';

/// Google Pixel 5
const googlePixel5 = DeviceConfiguration(
    name: 'Google Pixel 5 - 6.0"',
    frameConfiguration: _frame,
    screenConfiguration: _screen);

const _frame = FrameConfiguration(
    frameInsets: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
    outerRadius: BorderRadius.all(Radius.circular(52)),
    innerRadius: BorderRadius.all(Radius.circular(32)),
    features: [
      StaticFeature(portraitAlignment: Alignment.topLeft, child: _Cam()),
    ]);

const _screen = ScreenConfiguration(
    standardRectangleDiagonalInInch: 6.0,
    size: Size(392.7, 850.9),
    // 826.9
    portraitPadding: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 24.0),
    portraitViewPadding: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 24.0),
    portraitViewInsets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    portraitPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 0.0),
    portraitViewPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 24.0),
    portraitViewInsetsIfKeyboard: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 302.9),
    // 278.9
    landscapePadding: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 24.0),
    landscapeViewPadding: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 24.0),
    landscapeViewInsets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    landscapePaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 0.0),
    landscapeViewPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 24.0),
    landscapeViewInsetsIfKeyboard: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 248.4),
    textScaleFactor: 1.0,
    devicePixelRatio: 2.75,
    targetPlatform: TargetPlatform.android,
    features: [
      Align(
        alignment: Alignment.bottomCenter,
        child: HomeIndicator(widthInPortrait: 110, widthInLandscape: 110),
      )
    ]);

class _Cam extends StatelessWidget {
  const _Cam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.0,
      width: 26.0,
      margin: const EdgeInsets.all(12.0),
      decoration:
          const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
    );
  }
}
