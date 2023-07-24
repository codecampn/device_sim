import 'dart:math';

import 'package:device_sim/src/framework/simulator/status_bar_visibility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screen/inset_area.dart';
import '../screen/screen_configuration.dart';
import '../screen/unsafe_area.dart';

class Screen extends StatelessWidget {
  const Screen({
    Key? key,
    required this.configuration,
    this.unsafeAreaColor,
    this.isKeyboardVisible = false,
    this.mode,
    this.overlays,
    this.systemUiOverlayStyle,
    required this.child,
  }) : super(key: key);

  final Widget child;

  final ScreenConfiguration configuration;

  final Color? unsafeAreaColor;

  final bool isKeyboardVisible;

  final SystemUiMode? mode;

  final List<SystemUiOverlay>? overlays;

  final SystemUiOverlayStyle? systemUiOverlayStyle;

  @override
  Widget build(BuildContext context) {
    var mediaData = MediaQuery.of(context);

    var isTopVisible = true;
    var isBottomVisible = true;


    EdgeInsets padding;
    EdgeInsets viewPadding;
    EdgeInsets viewInsets;
    if (mediaData.orientation == Orientation.landscape) {
      if (isKeyboardVisible) {
        padding = configuration.landscapePaddingIfKeyboard;
        viewPadding = configuration.landscapeViewPaddingIfKeyboard;
        viewInsets = configuration.landscapeViewInsetsIfKeyboard;
      } else {
        padding = configuration.landscapePadding;
        viewPadding = configuration.landscapeViewPadding;
        viewInsets = configuration.landscapeViewInsets;
      }
    } else {
      if (isKeyboardVisible) {
        padding = configuration.portraitPaddingIfKeyboard;
        viewPadding = configuration.portraitViewPaddingIfKeyboard;
        viewInsets = configuration.portraitViewInsetsIfKeyboard;
      } else {
        padding = configuration.portraitPadding;
        viewPadding = configuration.portraitViewPadding;
        viewInsets = configuration.portraitViewInsets;
      }
    }

    return StatusBarVisibility(
      isTopVisible: isTopVisible,
      isBottomVisible: isBottomVisible,
      systemUiMode: mode,
      systemUiOverlayStyle: systemUiOverlayStyle,
      child: LayoutBuilder(builder: (context, layout) {
        return Stack(
          children: [
            MediaQuery(
                data: mediaData.copyWith(
                    padding: padding,
                    viewPadding: viewPadding,
                    viewInsets: viewInsets,
                    size: mediaData.orientation == Orientation.landscape
                        ? configuration.size.flipped
                        : configuration.size,
                    textScaleFactor: configuration.textScaleFactor,
                    devicePixelRatio: configuration.devicePixelRatio),
                child: child),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: configuration.statusBarConfiguration.portraitHeight,
                color: configuration.statusBarConfiguration.backgroundColor,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: InsetArea(
                height: viewInsets.top,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InsetArea(
                height: viewInsets.bottom,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: InsetArea(
                width: viewInsets.left,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: InsetArea(
                width: viewInsets.right,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: UnsafeArea(
                  height: max(padding.top, viewPadding.top),
                  color: unsafeAreaColor),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: UnsafeArea(
                  height: max(padding.bottom, viewPadding.bottom),
                  color: unsafeAreaColor),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: UnsafeArea(
                  width: max(padding.left, viewPadding.left),
                  color: unsafeAreaColor),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: UnsafeArea(
                  width: max(padding.right, viewPadding.right),
                  color: unsafeAreaColor),
            ),
            ...configuration.features
          ],
        );
      }),
    );
  }
}
