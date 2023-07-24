import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 0.7],
            ),
          ),
        ));
  }
}
