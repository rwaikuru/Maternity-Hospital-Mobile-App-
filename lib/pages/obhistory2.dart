import 'package:flutter/material.dart';

class Obhistory2 extends StatelessWidget {
 
 final int currentPage;
  final int totalPages;
  
  const Obhistory2({Key? key, required this.currentPage, required this.totalPages}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Obstetric History',
        style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: 
       Icon(Icons.arrow_back,
       color: Colors.black,
       ),
        onPressed: () {
            Navigator.pop(context);}
       ),
      ),
      body: Stack(
        children: [
          // Background Circles
          const Positioned(
            top: 0,
            right: 0,
            child: Circle(
              colors: [Colors.green, Colors.white],
            ),
          ),
          const Positioned(
            left: 0,
            bottom: 0,
            child: Circle(
              colors: [Colors.green, Color(0xFFF7CE42)],
            ),
          ),
          const Center(
            child: Circle(
              colors: [Colors.green, Color(0xFFF7CE42)],
              size: 200,
            ),
          ),
Positioned(
            top: 3,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              child: Stack(children: [
                LinearProgressIndicator(
                  value: currentPage / totalPages,
                  color: Colors.black,
                  backgroundColor: Colors.white,
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '${((currentPage / totalPages) * 100).toInt()}%',
                      style: const TextStyle(
                        color:Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
               ),
          // Rectangle with Input Field
          Center(
            child: Container(
              width: 450,
              height: 600,
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
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    const Text(
                      'Antenatal Profile for Current Pregnancy ', // Your field name here
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
      
                        decoration: const InputDecoration(
                          labelText: 'Enter your text here', // Your label here
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          alignLabelWithHint: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
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
    )
    )
    ]
    )
    );
  }
}

class Circle extends StatelessWidget {
  final List<Color> colors;
  final double size;

  const Circle({Key? key, required this.colors, this.size = 170.0}) : super(key: key);

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
    const MaterialApp(
      home: Obhistory2(currentPage: 1,totalPages: 3),
      debugShowCheckedModeBanner: false,
    ),
  );
}
