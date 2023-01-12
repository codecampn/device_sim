import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

/// Configuration of a specific device frame.
class FrameConfiguration extends Equatable {

  /// Thickness of frame's sides.
  final EdgeInsets frameInsets;

  /// Radius of frame's outer border.
  final BorderRadius outerRadius;

  /// Radius of frame's inner border.
  final BorderRadius innerRadius;

  /// Frame's additional features (like a notch).
  final List<Widget> features;

  /// Creates a new [FrameConfiguration].
  const FrameConfiguration(
      {required this.frameInsets,
      required this.outerRadius,
      required this.innerRadius,
      this.features = const []});

  @override
  List<Object?> get props => [frameInsets, outerRadius, innerRadius, features];
}
