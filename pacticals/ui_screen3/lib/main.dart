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
            "Recomended",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(0, 91, 135, 1),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.arrow_back_ios_new),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Start a new career",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Color.fromRGBO(0, 91, 135, 1),
                            ),
                          ),
                          child: const Text(
                            "Data Science",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Color.fromRGBO(0, 91, 135, 1),
                            ),
                          ),
                          child: const Text(
                            "Machine learnig",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Color.fromRGBO(0, 91, 135, 1),
                            ),
                          ),
                          child: const Text(
                            "Apache Maven",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.asset("assets/image1.jpeg"),
            ),
          ],
        ),
      ),
    );
  }
}
