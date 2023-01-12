import 'package:flutter/material.dart';
import '../devices/features/iphone_13_notch.dart';
import '../framework/device/device_configuration.dart';
import '../framework/frame/frame_configuration.dart';
import '../devices/features/home_indicator.dart';
import '../framework/frame/static_feature.dart';
import '../framework/screen/screen_configuration.dart';

/// iPhone 13 Mini
const iphone13Mini = DeviceConfiguration(
    name: 'iPhone 13 Mini - 5.4"',
    frameConfiguration: _iphone13MiniFrame,
    screenConfiguration: _iphone13MiniScreen);

const _iphone13MiniFrame = FrameConfiguration(
  frameInsets: EdgeInsets.all(20.0),
  outerRadius: BorderRadius.all(Radius.circular(68)),
  innerRadius: BorderRadius.all(Radius.circular(48)),
  features: [
    StaticFeature(
        portraitAlignment: Alignment.topCenter,
        child: IPhone13Notch(
          width: 174.0,
          height: 38.0,
        )),
  ],
);

const _iphone13MiniScreen = ScreenConfiguration(
    standardRectangleDiagonalInInch: 5.42,
    size: Size(375.0, 812.0),
    portraitPadding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 34.0),
    portraitViewPadding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 34.0),
    portraitViewInsets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    portraitPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
    portraitViewPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 34.0),
    portraitViewInsetsIfKeyboard: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 336.0),
    landscapePadding: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 21.0),
    landscapeViewPadding: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 21.0),
    landscapeViewInsets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    landscapePaddingIfKeyboard: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
    landscapeViewPaddingIfKeyboard: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 21.0),
    landscapeViewInsetsIfKeyboard: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 209.0),
    textScaleFactor: 1.0,
    devicePixelRatio: 3.0,
    targetPlatform: TargetPlatform.iOS,
    features: [
      Align(
        alignment: Alignment.bottomCenter,
        child: HomeIndicator(
          widthInPortrait: 134.0,
          widthInLandscape: 210.0,
        ),
      ),
    ]);
