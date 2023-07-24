import 'package:device_sim/device_sim.dart';
import 'package:flutter/material.dart';
import '../framework/device/device_configuration.dart';
import '../framework/frame/frame_configuration.dart';
import '../framework/screen/screen_configuration.dart';

/// iPhone SE (3rd gen.)
const iphoneSeGen3 = DeviceConfiguration(
    name: 'iPhone SE (3rd gen.) - 4.7"',
    frameConfiguration: _iphoneSeGen3Frame,
    screenConfiguration: _iphoneSeGen3Screen);

const _iphoneSeGen3Frame = FrameConfiguration(
  frameInsets: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 100.0),
  outerRadius: BorderRadius.all(Radius.circular(68)),
  innerRadius: BorderRadius.zero,
);

const _iphoneSeGen3Screen = ScreenConfiguration(
    standardRectangleDiagonalInInch: 4.7,
    size: Size(375.0, 667.0),
    portraitPadding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
    portraitViewPadding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
    portraitViewInsets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    portraitPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
    portraitViewPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
    portraitViewInsetsIfKeyboard: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 260.0),
    landscapePadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    landscapeViewPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    landscapeViewInsets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    landscapePaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    landscapeViewPaddingIfKeyboard: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
    landscapeViewInsetsIfKeyboard: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 200.0),
    textScaleFactor: 1.0,
    devicePixelRatio: 2.0,
    statusBarConfiguration: TopConfiguration(
        portraitHeight: 24.0,
        landscapeHeight: 0.0,
        isOverlapped: true,
        backgroundColor: Colors.black26),
    bottomConfiguration: BottomConfiguration(
        portraitOverlayHeight: 24,
        portraitExclusiveHeight: 0,
        backgroundColor: Colors.black26),
    targetPlatform: TargetPlatform.iOS);
