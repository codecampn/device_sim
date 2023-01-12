import 'package:flutter/material.dart';
import '../devices/features/iphone_13_notch.dart';
import '../framework/device/device_configuration.dart';
import '../framework/frame/frame_configuration.dart';
import '../devices/features/home_indicator.dart';
import '../framework/frame/static_feature.dart';
import '../framework/screen/screen_configuration.dart';

/// iPhone 13 Pro Max
const iphone13ProMax = DeviceConfiguration(
    name: 'iPhone 13 Pro Max - 6.7"',
    frameConfiguration: _iphone13ProMaxFrame,
    screenConfiguration: _iphone13ProMaxScreen);

const _iphone13ProMaxFrame = FrameConfiguration(
  frameInsets: EdgeInsets.all(20.0),
  outerRadius: BorderRadius.all(Radius.circular(68)),
  innerRadius: BorderRadius.all(Radius.circular(48)),
  features: [
    StaticFeature(
        portraitAlignment: Alignment.topCenter, child: IPhone13Notch()),
  ],
);

const _iphone13ProMaxScreen = ScreenConfiguration(
    standardRectangleDiagonalInInch: 6.68,
    size: Size(428.0, 926.0),
    portraitPadding: EdgeInsets.fromLTRB(0.0, 47.0, 0.0, 34.0),
    portraitViewPadding: EdgeInsets.fromLTRB(0.0, 47.0, 0.0, 34.0),
    portraitViewInsets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    portraitPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 47.0, 0.0, 0.0),
    portraitViewPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 47.0, 0.0, 34.0),
    portraitViewInsetsIfKeyboard: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 346.0),
    landscapePadding: EdgeInsets.fromLTRB(47.0, 0.0, 47.0, 21.0),
    landscapeViewPadding: EdgeInsets.fromLTRB(47.0, 0.0, 47.0, 21.0),
    landscapeViewInsets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    landscapePaddingIfKeyboard: EdgeInsets.fromLTRB(47.0, 0.0, 47.0, 0.0),
    landscapeViewPaddingIfKeyboard: EdgeInsets.fromLTRB(47.0, 0.0, 47.0, 21.0),
    landscapeViewInsetsIfKeyboard: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 219.0),
    textScaleFactor: 1.0,
    devicePixelRatio: 3.0,
    targetPlatform: TargetPlatform.iOS,
    features: [
      Align(
        alignment: Alignment.bottomCenter,
        child: HomeIndicator(
          widthInPortrait: 154.0,
          widthInLandscape: 236.0,
        ),
      ),
    ]);
