import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "App Bar",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700, 
                color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 140, 27, 19),
        ),
        body: Center(
          child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.red,
                width: 3.5,
              ))),
        ),
      ),
    );
  }
}
