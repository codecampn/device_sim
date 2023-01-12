import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import '../frame/frame_configuration.dart';
import '../screen/screen_configuration.dart';

/// Configuration of a specific device.
class DeviceConfiguration extends Equatable {
  /// Name of the device.
  final String name;

  /// Configuration of the device's frame.
  final FrameConfiguration frameConfiguration;

  /// Configuration of the device's screen.
  final ScreenConfiguration screenConfiguration;

  /// Creates a new [DeviceConfiguration].
  const DeviceConfiguration(
      {required this.name,
      required this.frameConfiguration,
      required this.screenConfiguration});

  @override
  List<Object?> get props => [name, frameConfiguration, screenConfiguration];

  /// Size of the device in pixels for a given orientation.
  Size sizeFor(Orientation orientation) {
    var deviceSize = Size(
        screenConfiguration.size.width +
            frameConfiguration.frameInsets.left +
            frameConfiguration.frameInsets.right,
        screenConfiguration.size.height +
            frameConfiguration.frameInsets.top +
            frameConfiguration.frameInsets.bottom);

    if ((deviceSize.height > deviceSize.width &&
            orientation == Orientation.landscape) ||
        (deviceSize.height < deviceSize.width &&
            orientation == Orientation.portrait)) {
      deviceSize = deviceSize.flipped;
    }
    return deviceSize;
  }

  /// Length in inch of the diagonal of the actual device.
  double get standardRectangleDiagonalInInch {
    var deviceSize = sizeFor(Orientation.portrait);

    var deviceDiagonalInPixels =
        sqrt(pow(deviceSize.width, 2) + pow(deviceSize.height, 2));

    var screenDiagonalInPixels = sqrt(pow(screenConfiguration.size.width, 2) +
        pow(screenConfiguration.size.height, 2));

    var standardRectangleDiagonalInInch =
        screenConfiguration.standardRectangleDiagonalInInch *
            (deviceDiagonalInPixels / screenDiagonalInPixels);

    return standardRectangleDiagonalInInch;
  }
}
