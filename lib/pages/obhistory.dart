import 'package:flutter/material.dart';
import 'package:pumwani/pages/obhistory2.dart';

class Obhistory extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  
  Obhistory({Key? key, required this.currentPage, required this.totalPages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Obstetric history',
         style: TextStyle(color: Colors.black),
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
            top: 5,
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
                ]
              ),
            ),
          ),

          // Rectangle with Input Field
          Center(
            child: Container(
              width: 450,
              height: 650,
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
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Date of birth',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent),
                                ),
                                alignLabelWithHint: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Place of Birth',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Sex',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent),
                                ),
                                alignLabelWithHint: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Weight',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent),
                                ),
                                alignLabelWithHint: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Duration of Labour',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent),
                                ),
                                alignLabelWithHint: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'alive or dead',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent),
                                ),
                                alignLabelWithHint: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Mode of Delivery',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent),
                                ),
                                alignLabelWithHint: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Pueperium',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent),
                                ),
                                alignLabelWithHint: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              maxLines: 7,
                              decoration: const InputDecoration(
                                labelText: 'Complications',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent),
                                ),
                                alignLabelWithHint: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              maxLines: 7,
                              decoration: const InputDecoration(
                                labelText: 'Feeding',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent),
                                ),
                                alignLabelWithHint: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (currentPage < totalPages) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Obhistory2(
                  currentPage: currentPage + 1,
                   totalPages: totalPages,),
              ),
            );
          } else {
            // Handle what should happen when you reach the last page
          }
        },
        child: const Icon(Icons.arrow_forward),
      ),
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
    MaterialApp(
      home: Obhistory(currentPage: 1, totalPages: 3),
      debugShowCheckedModeBanner: false,
    ),
  );
}
