import 'package:device_sim/device_sim.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Configuration of a specific device screen.
/// Use [CalibrationScreen] to find out the correct values.
class ScreenConfiguration extends Equatable {
  /// Diagonal of screen's standard rectangle in inch
  final double standardRectangleDiagonalInInch;

  /// Width and height of screen in pixels.
  final Size size;

  /// Screen's padding in portrait mode when keyboard is not visible.
  final EdgeInsets portraitPadding;

  /// Screen's view padding in portrait mode when keyboard is not visible.
  final EdgeInsets portraitViewPadding;

  /// Screen's view insets in portrait mode when keyboard is not visible.
  final EdgeInsets portraitViewInsets;

  /// Screen's padding in portrait mode when keyboard is visible.
  final EdgeInsets portraitPaddingIfKeyboard;

  /// Screen's view padding in portrait mode when keyboard is visible.
  final EdgeInsets portraitViewPaddingIfKeyboard;

  /// Screen's view insets in portrait mode when keyboard is visible.
  final EdgeInsets portraitViewInsetsIfKeyboard;

  /// Screen's padding in landscape mode when keyboard is not visible.
  final EdgeInsets landscapePadding;

  /// Screen's view padding in landscape mode when keyboard is not visible.
  final EdgeInsets landscapeViewPadding;

  /// Screen's view insets in landscape mode when keyboard is not visible.
  final EdgeInsets landscapeViewInsets;

  /// Screen's padding in landscape mode when keyboard is visible.
  final EdgeInsets landscapePaddingIfKeyboard;

  /// Screen's view padding in landscape mode when keyboard is visible.
  final EdgeInsets landscapeViewPaddingIfKeyboard;

  /// Screen's view insets in landscape mode when keyboard is visible.
  final EdgeInsets landscapeViewInsetsIfKeyboard;

  /// Screen's text scale factor.
  final double textScaleFactor;

  /// Screen's device pixel ratio.
  final double devicePixelRatio;

  /// Screen's target platform.
  final TargetPlatform targetPlatform;

  /// Frame's additional features (like a home indicator or status bar).
  final List<Widget> features;

  /// Creates a new [ScreenConfiguration].
  const ScreenConfiguration(
      {required this.standardRectangleDiagonalInInch,
      required this.size,
      required this.portraitPadding,
      required this.portraitViewPadding,
      required this.portraitViewInsets,
      required this.portraitPaddingIfKeyboard,
      required this.portraitViewPaddingIfKeyboard,
      required this.portraitViewInsetsIfKeyboard,
      required this.landscapePadding,
      required this.landscapeViewPadding,
      required this.landscapeViewInsets,
      required this.landscapePaddingIfKeyboard,
      required this.landscapeViewPaddingIfKeyboard,
      required this.landscapeViewInsetsIfKeyboard,
      required this.textScaleFactor,
      required this.devicePixelRatio,
      required this.targetPlatform,
      this.features = const []});

  @override
  List<Object?> get props => [
        standardRectangleDiagonalInInch,
        size,
        portraitPadding,
        portraitViewPadding,
        portraitViewInsets,
        portraitPaddingIfKeyboard,
        portraitViewPaddingIfKeyboard,
        portraitViewInsetsIfKeyboard,
        landscapePadding,
        landscapeViewPadding,
        landscapeViewInsets,
        landscapePaddingIfKeyboard,
        landscapeViewPaddingIfKeyboard,
        landscapeViewInsetsIfKeyboard,
        textScaleFactor,
        devicePixelRatio,
        targetPlatform,
        features
      ];
}
