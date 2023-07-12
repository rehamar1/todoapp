import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'pages/splashscreen.dart';

void main() {
  runApp(Sizer(builder: (context, orientation, deviceType) { return const MyApp();}));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomeScreen(),
    );
  }
}

