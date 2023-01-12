import 'package:flutter/material.dart';

class UnsafeArea extends StatelessWidget {
  const UnsafeArea({Key? key, this.width, this.height, this.color})
      : super(key: key);

  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}