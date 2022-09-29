import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tester/desktop.dart';
import 'package:tester/mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.teal,
          appBarTheme: AppBarTheme(
            color: Colors.teal,
          )),
      home: Builder(
        builder: (BuildContext context) {
          if (MediaQuery.of(context).size.width.toInt() <= 550) {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 0.75,
                ),
                child: MobileScreen());
          }
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.1,
              ),
              child: DesktopScreen());
        },
      ),
    );
  }
}
