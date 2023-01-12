import 'package:flutter/material.dart';

class InsetArea extends StatelessWidget {
  const InsetArea({Key? key, this.width, this.height}) : super(key: key);

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.grey,
    );
  }
}
