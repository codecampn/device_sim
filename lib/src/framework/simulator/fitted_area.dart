import 'package:flutter/widgets.dart';

typedef ZoomCallback = void Function(double factor);

class FittedArea extends StatelessWidget {
  const FittedArea({
    Key? key,
    required this.screenSize,
    required this.sizeToUse,
    required this.child,
  }) : super(key: key);

  final Size screenSize;
  final Size sizeToUse;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, layout) {
      return SizedBox(
        width: sizeToUse.width,
        height: sizeToUse.height,
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: screenSize.width,
            height: screenSize.height,
            child: MediaQuery(
                data: MediaQuery.of(context).copyWith(size: screenSize),
                child: child),
          ),
        ),
      );
    });
  }
}
