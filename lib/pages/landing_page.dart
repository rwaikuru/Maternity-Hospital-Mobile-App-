// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:pumwani/pages/dashboard.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    _redirectToDashboard();
  }

  void _redirectToDashboard() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const DashboardPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "lib/assets/AppIcon.appiconset/logo.jpeg",
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
