import 'package:flutter/material.dart';

class Obhistory extends StatelessWidget {
  const Obhistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Circles
          Positioned(
            top: 0,
            right: 0,
            child: Circle(
              colors: [Colors.green, Colors.white],
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Circle(
              colors: [Colors.green, Colors.white],
            ),
          ),
          Center(
            child: Circle(
              colors: [Colors.green, Colors.white],
              size: 200,
            ),
          ),

          // Rectangle with Input Field
          Center(
            child: Container(
              width: 450, // Adjust the width here
              height: 700, // Adjust the height here
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.lightGreen,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.black),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(width: 16), // Add some space between the fields
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Second Name',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Circle extends StatelessWidget {
  final List<Color> colors;
  final double size;

  const Circle({Key? key, required this.colors, this.size = 100.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Obhistory(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
