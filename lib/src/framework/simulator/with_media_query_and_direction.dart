import 'package:flutter/material.dart';

class WithMediaQueryAndDirection extends StatelessWidget {
  const WithMediaQueryAndDirection({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    var widget = child;

    if (MediaQuery.maybeOf(context) == null) {
      widget = MediaQuery.fromWindow(child: widget);
    }

    if (Directionality.maybeOf(context) == null) {
      widget = Directionality(textDirection: TextDirection.ltr, child: widget);
    }

    return widget;
  }
}
