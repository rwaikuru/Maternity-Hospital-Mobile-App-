import 'package:flutter/material.dart';
import 'package:pumwani/pages/landing_page.dart';
import 'package:pumwani/pages/obhistory.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
