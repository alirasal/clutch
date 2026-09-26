import 'package:clutch/view/auth/login.dart';
import 'package:clutch/view/auth/signup.dart';
import 'package:clutch/view/bottom-nav/bottom-nav.dart';
import 'package:clutch/view/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BottomNav());
  }
}
