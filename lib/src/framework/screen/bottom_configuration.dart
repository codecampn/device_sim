import 'dart:ui';

import 'package:equatable/equatable.dart';

class BottomConfiguration extends Equatable {
  final double portraitExclusiveHeight;
  final double portraitOverlayHeight;
  final Color backgroundColor;

  const BottomConfiguration(
      {required this.portraitExclusiveHeight,
        required this.portraitOverlayHeight,
        required this.backgroundColor});

  @override
  List<Object?> get props =>
      [portraitExclusiveHeight, portraitOverlayHeight, backgroundColor];
}