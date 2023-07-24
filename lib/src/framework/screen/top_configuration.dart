import 'dart:ui';

import 'package:equatable/equatable.dart';

class TopConfiguration extends Equatable {
  final double portraitHeight;

  final double landscapeHeight;

  final bool isOverlapped;

  final Color backgroundColor;

  const TopConfiguration(
      {required this.portraitHeight,
        required this.landscapeHeight,
        required this.isOverlapped,
        required this.backgroundColor});

  @override
  List<Object?> get props =>
      [portraitHeight, landscapeHeight, isOverlapped, backgroundColor];
}