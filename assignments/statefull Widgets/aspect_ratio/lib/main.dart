//aspect ratio
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:  AppBar(
          title: const Text(
            "App Bar",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: Colors.white
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 29, 79, 119),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color:  Colors.amber,
            child: Image.network("https://static-cse.canva.com/blob/1625993/ComposeStunningImages6.jpg"),
          ),
        ),
      ),
    );
  }
}
