import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A screen the helps to find the correct values for [ScreenConfiguration].
class CalibrationScreen extends StatelessWidget {
  const CalibrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(builder: (context, layout) {
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
                  child: Calibrator(),
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

class Calibrator extends StatefulWidget {
  const Calibrator({Key? key}) : super(key: key);

  @override
  State<Calibrator> createState() => _CalibratorState();
}

class _CalibratorState extends State<Calibrator> {
  var focusNode = FocusNode();

  Config? portraitDefaultNoKeyboard;

  Config? portraitDefaultWithKeyboard;

  Config? landscapeDefaultNoKeyboard;

  Config? landscapeDefaultWithKeyboard;

  Config? portraitNoTopNoKeyboard;

  Config? portraitNoTopWithKeyboard;

  Config? landscapeNoTopNoKeyboard;

  Config? landscapeNoTopWithKeyboard;

  Config? portraitNoBottomNoKeyboard;

  Config? portraitNoBottomWithKeyboard;

  Config? landscapeNoBottomNoKeyboard;

  Config? landscapeNoBottomWithKeyboard;

  Config? current;

  @override
  Widget build(BuildContext context) {
    var mediaData = MediaQuery.of(context);

    // print(mediaData.size.toString());

    current = Config(
        size: mediaData.size,
        padding: mediaData.padding,
        viewPadding: mediaData.viewPadding,
        viewInsets: mediaData.viewInsets);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('screen size: ${mediaData.size.toString()}'),
        Text('padding: ${mediaData.padding.toString()}'),
        Text('viewPadding: ${mediaData.viewPadding.toString()}'),
        Text('viewInsets: ${mediaData.viewInsets.toString()}'),
        Text('devicePixelRatio: ${mediaData.devicePixelRatio.toString()}'),
        Text('textScaleFactor: ${mediaData.textScaleFactor.toString()}'),
        Text('target platform: ${defaultTargetPlatform.name}'),
        Text(mediaData.orientation.toString()),
        Text(Theme.of(context).visualDensity.toStringShort()),
        SizedBox(
          width: 200,
          child: TextField(
            focusNode: focusNode,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            autofocus: false,
            controller: TextEditingController(),
          ),
        ),
        ElevatedButton(
            onPressed: () async {

              for (var i = 0; i < 1; i++) {
                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    portraitDefaultNoKeyboard = current;
                    focusNode.requestFocus();
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    portraitDefaultWithKeyboard = current;
                    focusNode.nextFocus();
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    SystemChrome.setPreferredOrientations(
                        [DeviceOrientation.landscapeRight]);
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    landscapeDefaultNoKeyboard = current;
                    focusNode.requestFocus();
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    landscapeDefaultWithKeyboard = current;
                    focusNode.nextFocus();
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    SystemChrome.setPreferredOrientations(
                        [DeviceOrientation.portraitUp]);
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
                        overlays: [SystemUiOverlay.bottom]);
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    portraitNoTopNoKeyboard = current;
                    focusNode.requestFocus();
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    portraitNoTopWithKeyboard = current;
                    focusNode.nextFocus();
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    SystemChrome.setPreferredOrientations(
                        [DeviceOrientation.landscapeRight]);
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    landscapeNoTopNoKeyboard = current;
                    focusNode.requestFocus();
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    landscapeNoTopWithKeyboard = current;
                    focusNode.nextFocus();
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    SystemChrome.setPreferredOrientations(
                        [DeviceOrientation.portraitUp]);
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
                        overlays: [SystemUiOverlay.top]);
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    portraitNoBottomNoKeyboard = current;
                    focusNode.requestFocus();
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    portraitNoBottomWithKeyboard = current;
                    focusNode.nextFocus();
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    SystemChrome.setPreferredOrientations(
                        [DeviceOrientation.landscapeRight]);
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    landscapeNoBottomNoKeyboard = current;
                    focusNode.requestFocus();
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    landscapeNoBottomWithKeyboard = current;
                    focusNode.nextFocus();
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    SystemChrome.setPreferredOrientations(
                        [DeviceOrientation.portraitUp]);
                  });
                });

                await Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
                        overlays: [
                          SystemUiOverlay.top,
                          SystemUiOverlay.bottom
                        ]);
                  });
                });

                print(
                    'portraitDefaultNoKeyboard:     $portraitDefaultNoKeyboard');
                print(
                    'portraitNoTopNoKeyboard:       $portraitNoTopNoKeyboard');
                print(
                    'portraitNoBottomNoKeyboard:    $portraitNoBottomNoKeyboard');
                print(
                    'portraitDefaultWithKeyboard:   $portraitDefaultWithKeyboard');
                print(
                    'portraitNoTopWithKeyboard:     $portraitNoTopWithKeyboard');
                print(
                    'portraitNoBottomWithKeyboard:  $portraitNoBottomWithKeyboard');
                print(
                    'landscapeDefaultNoKeyboard:    $landscapeDefaultNoKeyboard');
                print(
                    'landscapeNoTopNoKeyboard:      $landscapeNoTopNoKeyboard');
                print(
                    'landscapeNoBottomNoKeyboard:   $landscapeNoBottomNoKeyboard');
                print(
                    'landscapeDefaultWithKeyboard:  $landscapeDefaultWithKeyboard');
                print(
                    'landscapeNoTopWithKeyboard:    $landscapeNoTopWithKeyboard');
                print(
                    'landscapeNoBottomWithKeyboard: $landscapeNoBottomWithKeyboard');

                // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

                var portraitExclusiveTopHeight = portraitNoTopNoKeyboard!.size.height - portraitDefaultNoKeyboard!.size.height;
                var portraitOverlayTopHeight = portraitDefaultNoKeyboard!.padding.top - portraitNoTopNoKeyboard!.padding.top;
                var portraitExclusiveBottomHeight = portraitNoBottomNoKeyboard!.size.height - portraitDefaultNoKeyboard!.size.height;
                var portraitOverlayBottomHeight = portraitDefaultNoKeyboard!.padding.bottom - portraitNoBottomNoKeyboard!.padding.bottom;

                print('portraitExclusiveTopHeight: $portraitExclusiveTopHeight');
                print('portraitOverlayTopHeight: $portraitOverlayTopHeight');
                print('portraitExclusiveBottomHeight: $portraitExclusiveBottomHeight');
                print('portraitOverlayBottomHeight: $portraitOverlayBottomHeight');

                var landscapeExclusiveTopHeight = landscapeNoTopNoKeyboard!.size.height - landscapeDefaultNoKeyboard!.size.height;
                var landscapeOverlayTopHeight = landscapeDefaultNoKeyboard!.padding.top - landscapeNoTopNoKeyboard!.padding.top;
                var landscapeExclusiveBottomHeight = landscapeNoBottomNoKeyboard!.size.height - landscapeDefaultNoKeyboard!.size.height;
                var landscapeOverlayBottomHeight = landscapeDefaultNoKeyboard!.padding.bottom - landscapeNoBottomNoKeyboard!.padding.bottom;

                print('landscapeExclusiveTopHeight: $landscapeExclusiveTopHeight');
                print('landscapeOverlayTopHeight: $landscapeOverlayTopHeight');
                print('landscapeExclusiveBottomHeight: $landscapeExclusiveBottomHeight');
                print('landscapeOverlayBottomHeight: $landscapeOverlayBottomHeight');



              }
            },
            child: Text('Calibrate')),
      ],
    );
  }
}

class Config extends Equatable {
  final Size size;
  final EdgeInsets padding;
  final EdgeInsets viewPadding;
  final EdgeInsets viewInsets;

  const Config(
      {required this.size,
      required this.padding,
      required this.viewPadding,
      required this.viewInsets});

  @override
  List<Object?> get props => [
        size,
        padding,
        viewPadding,
        viewInsets
      ];

  @override
  bool? get stringify => true;
}
