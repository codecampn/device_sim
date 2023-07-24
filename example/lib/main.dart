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
    systemNavigationBarColor: Colors.black12,
  ));*/

  // SystemChrome.setEnabledSystemUIOverlays([]);

  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  runApp(const MyApp());
  // runApp(const MaterialApp(home: CalibrationScreen()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceSim(
        isEnabled: kIsWeb || Platform.isMacOS || Platform.isWindows,
        devices: const [googlePixel5, iphone13, iphone13ProMax, ipad129Gen5],
        builder: (context) {
          return MaterialApp(
            // DO NOT FORGET TO SET THIS TO TRUE FOR THE SIMULATOR TO WORK CORRECTLY!
            useInheritedMediaQuery: true,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              backgroundColor: Colors.green,
              scaffoldBackgroundColor: Colors.yellow
            ),
            // home: const MyHomePage(title: 'Flutter Demo Home Page'),
            home: const CalibrationScreen(),
            // home: const ShowcaseScreen(),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
