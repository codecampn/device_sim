import 'package:flutter/material.dart';
import '../framework/device/device_configuration.dart';
import '../framework/frame/frame_configuration.dart';
import '../devices/features/home_indicator.dart';
import '../framework/screen/screen_configuration.dart';

/// 12.9" iPad Pro (5th gen.)
const ipad129Gen5 = DeviceConfiguration(
    name: '12.9" iPad Pro (5th gen.) - 12.9"',
    frameConfiguration: _ipadPro129Gen5Frame,
    screenConfiguration: _ipadPro129Gen5Screen);

const _ipadPro129Gen5Frame = FrameConfiguration(
  frameInsets: EdgeInsets.all(42.0),
  outerRadius: BorderRadius.all(Radius.circular(68)),
  innerRadius: BorderRadius.all(Radius.circular(22)),
  features: [],
);

const _ipadPro129Gen5Screen = ScreenConfiguration(
    standardRectangleDiagonalInInch: 12.9,
    size: Size(1024.0, 1366.0),
    portraitPadding: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 20.0),
    portraitViewPadding: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 20.0),
    portraitViewInsets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    portraitPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 0.0),
    portraitViewPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 20.0),
    portraitViewInsetsIfKeyboard: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 403.0),
    landscapePadding: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 20.0),
    landscapeViewPadding: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 20.0),
    landscapeViewInsets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    landscapePaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 0.0),
    landscapeViewPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 20.0),
    landscapeViewInsetsIfKeyboard: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 498.0),
    textScaleFactor: 1.0,
    devicePixelRatio: 2.0,
    targetPlatform: TargetPlatform.iOS,
    features: [
      Align(
        alignment: Alignment.bottomCenter,
        child: HomeIndicator(
          widthInPortrait: 316.0,
          widthInLandscape: 340.0,
        ),
      ),
    ]);
