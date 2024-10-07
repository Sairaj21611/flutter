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
            "Core2web",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 28, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
              ),
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
              ),
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,
              ),
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 105, 15, 45),
              ),
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                color: Colors.yellowAccent,
              ),
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 154, 89, 66),
              ),
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                color: Colors.deepOrange,
              ),
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 106, 21, 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
