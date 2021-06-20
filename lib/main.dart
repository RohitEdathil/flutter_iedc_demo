import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("bg.jpg"),
                fit: BoxFit.fill,
              )),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
              child: Center(
                child: Container(
                  height: 400,
                  child: RiveAnimation.asset(
                    'logo.riv',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
