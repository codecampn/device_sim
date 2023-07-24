import 'dart:io';

import 'package:device_sim/device_sim.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // runApp(const MyApp());

  WidgetsFlutterBinding.ensureInitialized();

  /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
  ));*/
  // This removes the bottom navigation and fills the empty space
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual);
  // --> OR <-- you could do this:
  // This removes the top and bottom and fills the empty space
  // This one resulted in a native pop up that notified me I was in full screen
  // mode and how to restore navigation by swiping up/down from the edges
  // SystemChrome.setEnabledSystemUIOverlays([]);  <-- this is native full screen mode

  /*SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
  ));

   */

  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  runApp(DeviceSim(
    devices: const [googlePixel5],
    builder: (context) {
      return const MaterialApp(
          useInheritedMediaQuery: true,
          home: CalibrationScreen());
    }
  ));
}
