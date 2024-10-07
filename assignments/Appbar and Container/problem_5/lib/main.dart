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
            "AppBar",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 28, color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.amber,
                child: Image.network("https://g3.img-dpreview.com/79C861DEA19B440F9E5BF213E92F34DE.jpg"),
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.green,
                child: Image.network("https://g1.img-dpreview.com/FF9CE2684532407EA326F7E9562EB91A.jpg"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
