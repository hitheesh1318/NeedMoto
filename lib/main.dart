import 'package:flutter/material.dart';

import 'Splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //This file will redirect to home screen
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
     );
  }
}
