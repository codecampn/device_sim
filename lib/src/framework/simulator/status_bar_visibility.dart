import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class StatusBarVisibility extends InheritedWidget {
  const StatusBarVisibility({
    Key? key,
    required this.topHeight,
    required this.bottomHeight,
    required this.systemUiOverlayStyle,
    required Widget child,
  })  : assert(topHeight >= 0.0),
        assert(bottomHeight >= 0.0),
        super(key: key, child: child);

  final double topHeight;

  final double bottomHeight;

  final SystemUiOverlayStyle? systemUiOverlayStyle;

  static StatusBarVisibility of(BuildContext context) {
    final StatusBarVisibility? result =
        context.dependOnInheritedWidgetOfExactType<StatusBarVisibility>();
    assert(result != null, 'No StatusBarVisibility found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(StatusBarVisibility oldWidget) {
    return topHeight != oldWidget.topHeight ||
        bottomHeight != oldWidget.bottomHeight ||
        systemUiOverlayStyle != oldWidget.systemUiOverlayStyle;
  }
}
