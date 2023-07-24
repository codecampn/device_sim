import 'package:device_sim/device_sim.dart';
import 'package:flutter/material.dart';
import '../devices/features/iphone_13_notch.dart';
import '../framework/device/device_configuration.dart';
import '../framework/frame/frame_configuration.dart';
import '../devices/features/home_indicator.dart';
import '../framework/frame/static_feature.dart';
import '../framework/screen/screen_configuration.dart';

/// iPhone 13 Pro
const iphone13Pro = DeviceConfiguration(
    name: 'iPhone 13 Pro - 6.1"',
    frameConfiguration: _iphone13ProFrame,
    screenConfiguration: _iphone13ProScreen);

const _iphone13ProFrame = FrameConfiguration(
  frameInsets: EdgeInsets.all(20.0),
  outerRadius: BorderRadius.all(Radius.circular(68)),
  innerRadius: BorderRadius.all(Radius.circular(48)),
  features: [
    StaticFeature(
        portraitAlignment: Alignment.topCenter, child: IPhone13Notch()),
  ],
);

const _iphone13ProScreen = ScreenConfiguration(
    standardRectangleDiagonalInInch: 6.06,
    size: Size(390.0, 844.0),
    portraitPadding: EdgeInsets.fromLTRB(0.0, 47.0, 0.0, 34.0),
    portraitViewPadding: EdgeInsets.fromLTRB(0.0, 47.0, 0.0, 34.0),
    portraitViewInsets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    portraitPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 47.0, 0.0, 0.0),
    portraitViewPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 47.0, 0.0, 34.0),
    portraitViewInsetsIfKeyboard: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 336.0),
    landscapePadding: EdgeInsets.fromLTRB(47.0, 0.0, 47.0, 21.0),
    landscapeViewPadding: EdgeInsets.fromLTRB(47.0, 0.0, 47.0, 21.0),
    landscapeViewInsets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    landscapePaddingIfKeyboard: EdgeInsets.fromLTRB(47.0, 0.0, 47.0, 0.0),
    landscapeViewPaddingIfKeyboard: EdgeInsets.fromLTRB(47.0, 0.0, 47.0, 21.0),
    landscapeViewInsetsIfKeyboard: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 219.0),
    textScaleFactor: 1.0,
    devicePixelRatio: 3.0,
    statusBarConfiguration: TopConfiguration(
        portraitHeight: 24.0,
        landscapeHeight: 0.0,
        isOverlapped: true,
        backgroundColor: Colors.black26),
    bottomConfiguration: BottomConfiguration(
        portraitOverlayHeight: 24,
        portraitExclusiveHeight: 0,
        backgroundColor: Colors.black26),
    targetPlatform: TargetPlatform.iOS,
    features: [
      Align(
        alignment: Alignment.bottomCenter,
        child: HomeIndicator(
          widthInPortrait: 138.0,
          widthInLandscape: 220.0,
        ),
      ),
    ]);
