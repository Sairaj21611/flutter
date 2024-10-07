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
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  // padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(10),
                  height: 300,
                  width: 150,
                  child: Image.network(
                      "https://g1.img-dpreview.com/FF9CE2684532407EA326F7E9562EB91A.jpg",
                      fit: BoxFit.cover)),
              Container(
                  // padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(10),
                  height: 300,
                  width: 150,
                  child: Image.network(
                      "https://g1.img-dpreview.com/FF9CE2684532407EA326F7E9562EB91A.jpg",
                      fit: BoxFit.cover)),
              Container(
                  // padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(10),
                  height: 300,
                  width: 150,
                  child: Image.network(
                      "https://g1.img-dpreview.com/FF9CE2684532407EA326F7E9562EB91A.jpg",
                      fit: BoxFit.cover)),
              Container(
                  // padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(10),
                  height: 300,
                  width: 150,
                  child: Image.network(
                      "https://g1.img-dpreview.com/FF9CE2684532407EA326F7E9562EB91A.jpg",
                      fit: BoxFit.cover)),
              Container(
                  // padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(10),
                  height: 300,
                  width: 150,
                  child: Image.network(
                      "https://g1.img-dpreview.com/FF9CE2684532407EA326F7E9562EB91A.jpg",
                      fit: BoxFit.cover)),
            ],
          ),
        ),
      ),
    );
  }
}
