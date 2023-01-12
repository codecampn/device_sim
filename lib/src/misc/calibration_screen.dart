import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// A screen the helps to find the correct values for [ScreenConfiguration].
class CalibrationScreen extends StatelessWidget {
  const CalibrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(builder: (context, layout) {
        var mediaData = MediaQuery.of(context);
        return CustomPaint(
          painter: _BackgroundPaint(),
          child: Center(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.green,
                    height: 320,
                    width: 320,
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('screen size: ${mediaData.size.toString()}'),
                      Text('padding: ${mediaData.padding.toString()}'),
                      Text('viewPadding: ${mediaData.viewPadding.toString()}'),
                      Text('viewInsets: ${mediaData.viewInsets.toString()}'),
                      Text(
                          'devicePixelRatio: ${mediaData.devicePixelRatio.toString()}'),
                      Text(
                          'textScaleFactor: ${mediaData.textScaleFactor.toString()}'),
                      Text('target platform: ${defaultTargetPlatform.name}'),
                      Text(mediaData.orientation.toString()),
                      Text(Theme.of(context).visualDensity.toStringShort()),
                      Text('${layout.maxWidth}x${layout.maxHeight}'),
                      SizedBox(
                        width: 200,
                        child: TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          autofocus: true,
                          controller: TextEditingController(),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class _BackgroundPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    final paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.grey;

    const heightLine = 10;
    const widthLine = 10;

    for (int i = 1; i < height; i++) {
      if (i % heightLine == 0) {
        Path linePath = Path();
        linePath
            .addRect(Rect.fromLTRB(0, i.toDouble(), width, (i + 1).toDouble()));
        canvas.drawPath(linePath, paint);
      }
    }
    for (int i = 1; i < width; i++) {
      if (i % widthLine == 0) {
        Path linePath = Path();
        linePath.addRect(
            Rect.fromLTRB(i.toDouble(), 0, (i + 1).toDouble(), height));
        canvas.drawPath(linePath, paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
